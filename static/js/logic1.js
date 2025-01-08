// GeoCoordinates for provinces (backup coordinates for each province)
const geoCoordinates = {
    "Alberta": { latitude: 53.9333, longitude: -116.5765 },
    "British Columbia": { latitude: 53.7267, longitude: -127.6476 },
    "Manitoba": { latitude: 50.0000, longitude: -98.0000 },
    "New Brunswick": { latitude: 46.5653, longitude: -66.4619 },
    "Newfoundland and Labrador": { latitude: 53.1355, longitude: -57.6604 },
    "Nova Scotia": { latitude: 44.6820, longitude: -63.7443 },
    "Ontario": { latitude: 51.2538, longitude: -85.3232 },
    "Prince Edward Island": { latitude: 46.2500, longitude: -63.0000 },
    "Quebec": { latitude: 52.9399, longitude: -73.5491 },
    "Saskatchewan": { latitude: 52.9399, longitude: -106.4509 },
    "Northwest Territories": { latitude: 64.8255, longitude: -124.8457 },
    "Nunavut": { latitude: 70.2998, longitude: -83.1076 },
    "Yukon": { latitude: 64.2823, longitude: -135.0000 }
};

// API Endpoints
const endpoints = [
    "http://127.0.0.1:5000/api/v1.0/incidence_rate_myocardial",
    "http://127.0.0.1:5000/api/v1.0/incidence_rates_ischemics",
    "http://127.0.0.1:5000/api/v1.0/incidence_rates_heart_failure"
];

// Initialize the map
const map = L.map('map').setView([56.1304, -106.3468], 4);
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 18,
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

// Placeholder for data by year, province, and count type
let dataByYear = {
    "myocardial": {},
    "ischemics": {},
    "heart_failure": {}
};

// Function to load GeoJSON data
function loadGeoJSON(data) {
    const selectedCountType = document.getElementById("count-dropdown").value; // Get selected count type
    const selectedYear = document.getElementById("year-dropdown").value; // Get selected year

    const geojson = L.geoJson(data, {
        style: feature => {
            const province = feature.properties.name;
            const count = dataByYear[selectedCountType][selectedYear]?.[province] || 0;
            return { fillColor: getColor(count), fillOpacity: 0.7, weight: 1, color: 'white' };
        },
        onEachFeature: (feature, layer) => {
            const province = feature.properties.name;
            const count = dataByYear[selectedCountType][selectedYear]?.[province] || "N/A";
            layer.bindPopup(`<strong>${province}</strong><br>Count: ${count}`);
            layer.on('mouseover', function () {
                this.setStyle({ fillOpacity: 1, weight: 2 });
            });
            layer.on('mouseout', function () {
                this.setStyle({ fillOpacity: 0.7, weight: 1 });
            });
        }
    }).addTo(map);
}

// Fetch data from multiple API endpoints
async function init() {
    try {
        // Fetch data from all endpoints and process for each count type
        const responses = await Promise.all(endpoints.map(url => fetch(url).then(res => res.json())));

        // Process data by year, province, and count type (myocardial, ischemic, heart failure)
        responses.forEach((response, index) => {
            const countType = index === 0 ? "myocardial" : index === 1 ? "ischemics" : "heart_failure";
            response.forEach(entry => {
                const year = entry.fiscal_year;
                const province = entry.geography;
                const count = parseFloat(entry.counts);

                if (!dataByYear[countType][year]) dataByYear[countType][year] = {};
                dataByYear[countType][year][province] = count;
            });
        });

        // Populate year dropdown
        const yearDropdown = document.getElementById("year-dropdown");
        Object.keys(dataByYear.myocardial).forEach(year => {
            const option = document.createElement("option");
            option.value = year;
            option.textContent = year;
            yearDropdown.appendChild(option);
        });

        // Populate count dropdown
        const countDropdown = document.getElementById("count-dropdown");
        const countTypes = ["myocardial", "ischemics", "heart_failure"];
        countTypes.forEach(countType => {
            const option = document.createElement("option");
            option.value = countType;
            option.textContent = countType.charAt(0).toUpperCase() + countType.slice(1).replace("_", " ");
            countDropdown.appendChild(option);
        });

        // Load GeoJSON map data
        const geojsonResponse = await fetch("https://raw.githubusercontent.com/codeforamerica/click_that_hood/master/public/data/canada.geojson");
        const geojsonData = await geojsonResponse.json();
        loadGeoJSON(geojsonData);

        // Update map when year or count type is changed
        yearDropdown.addEventListener("change", () => loadGeoJSON(geojsonData));
        countDropdown.addEventListener("change", () => loadGeoJSON(geojsonData));

        // Add the legend to the map
        addLegend();
    } catch (error) {
        console.error("Error initializing map:", error);
    }
}

// Function to get color based on the count
function getColor(count) {
    return count > 70000 ? '#800026' :
           count > 60000 ? '#BD0026' :
           count > 50000 ? '#E31A1C' :
           count > 40000 ? '#FC4E2A' :
           count > 30000 ? '#FD8D3C' :
           count > 10000 ? '#FEB24C' :
           count > 0     ? '#FED976' :
                           '#FFEDA0';
}

// Add legend to the map
function addLegend() {
    const legend = L.control({ position: 'bottomleft' });

    legend.onAdd = function () {
        const div = L.DomUtil.create('div', 'info legend');
        const grades = [0, 10000, 30000, 40000, 50000, 60000, 70000];
        const labels = [];

        for (let i = 0; i < grades.length; i++) {
            const color = getColor(grades[i]);
            labels.push(
                '<i style="background:' + color + '; width: 18px; height: 18px; display: inline-block;"></i> ' +
                grades[i] + (grades[i + 1] ? '&ndash;' + grades[i + 1] + '<br>' : '+')
            );
        }

        div.innerHTML = labels.join('');
        return div;
    };

    legend.addTo(map);
}

// Start the map setup
init();
