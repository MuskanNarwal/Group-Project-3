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

// Placeholder for data by year, province, and rate type
let dataByYear = {
    "myocardial": {},
    "ischemics": {},
    "heart_failure": {}
};

// Function to load GeoJSON data
function loadGeoJSON(data) {
    const selectedRateType = document.getElementById("rate-dropdown").value; // Get selected rate type
    const selectedYear = document.getElementById("year-dropdown").value; // Get selected year

    const geojson = L.geoJson(data, {
        style: feature => {
            const province = feature.properties.name;
            const rate = dataByYear[selectedRateType][selectedYear]?.[province] || 0;
            return { fillColor: getColor(rate), fillOpacity: 0.7, weight: 1, color: 'white' };
        },
        onEachFeature: (feature, layer) => {
            const province = feature.properties.name;
            const rate = dataByYear[selectedRateType][selectedYear]?.[province] || "N/A";
            const population = getPopulation(province); // Fetch population for the province
            layer.bindPopup(`<strong>${province}</strong><br>Rate: ${rate} per 100k<br>Population: ${population}`);
        }
    }).addTo(map);
}

// Function to fetch population data
function getPopulation(province) {
    const populationData = {
        "Alberta": "4,371,000", "British Columbia": "5,110,000", "Manitoba": "1,380,000",
        "New Brunswick": "776,000", "Newfoundland and Labrador": "522,000", "Nova Scotia": "971,000",
        "Ontario": "13,448,000", "Prince Edward Island": "159,000", "Quebec": "8,575,000",
        "Saskatchewan": "1,174,000", "Northwest Territories": "41,000", "Nunavut": "38,000", "Yukon": "42,000"
    };
    return populationData[province] || "Unknown";
}

// Fetch data from multiple API endpoints
async function init() {
    try {
        // Fetch data from all endpoints and process for each rate type
        const responses = await Promise.all(endpoints.map(url => fetch(url).then(res => res.json())));
        
        // Process data by year, province, and rate type (myocardial, ischemic, heart failure)
        responses.forEach((response, index) => {
            const rateType = index === 0 ? "myocardial" : index === 1 ? "ischemics" : "heart_failure";
            response.forEach(entry => {
                const year = entry.fiscal_year;
                const province = entry.geography;
                const rate = parseFloat(entry.rate_per_100k);

                if (!dataByYear[rateType][year]) dataByYear[rateType][year] = {};
                dataByYear[rateType][year][province] = rate;
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

        // Populate rate dropdown
        const rateDropdown = document.getElementById("rate-dropdown");
        const rateTypes = ["myocardial", "ischemics", "heart_failure"];
        rateTypes.forEach(rateType => {
            const option = document.createElement("option");
            option.value = rateType;
            option.textContent = rateType.charAt(0).toUpperCase() + rateType.slice(1).replace("_", " ");
            rateDropdown.appendChild(option);
        });

        // Load GeoJSON map data
        const geojsonResponse = await fetch("https://raw.githubusercontent.com/codeforamerica/click_that_hood/master/public/data/canada.geojson");
        const geojsonData = await geojsonResponse.json();
        loadGeoJSON(geojsonData);

        // Update map when year or rate type is changed
        yearDropdown.addEventListener("change", () => loadGeoJSON(geojsonData));
        rateDropdown.addEventListener("change", () => loadGeoJSON(geojsonData));

        // Add the legend to the map
        addLegend();
    } catch (error) {
        console.error("Error initializing map:", error);
    }
}

// Function to get color based on the rate
function getColor(rate) {
    return rate > 5000 ? '#800026' :
           rate > 4000 ? '#BD0026' :
           rate > 3000 ? '#E31A1C' :
           rate > 2000 ? '#FC4E2A' :
           rate > 1000 ? '#FD8D3C' :
           rate > 500  ? '#FEB24C' :
           rate > 0    ? '#FED976' :
                         '#FFEDA0';
}

// Add legend to the map
function addLegend() {
    const legend = L.control({ position: 'bottomright' });

    legend.onAdd = function () {
        const div = L.DomUtil.create('div', 'info legend');
        const grades = [0, 500, 1000, 2000, 3000, 4000, 5000]; // Define your rate ranges
        const labels = [];

        // Loop through grades and generate labels with a colored square for each
        for (let i = 0; i < grades.length; i++) {
            // Get the color for each grade using getColor function
            const color = getColor(grades[i]); // Use grade[i] to get the correct color
            labels.push(
                '<i style="background:' + color + '; width: 18px; height: 18px; display: inline-block;"></i> ' +  // Color square
                grades[i] + (grades[i + 1] ? '&ndash;' + grades[i + 1] + '<br>' : '+')
            );
        }

        // Add the final labels to the legend
        div.innerHTML = labels.join('');
        return div;
    };

    legend.addTo(map);
}

// Start the map setup
init();
