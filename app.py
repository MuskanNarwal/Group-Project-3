# Import the dependencies
import numpy as np
import pandas as pd
import datetime as dt
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, Table, MetaData
from flask import Flask, jsonify
from flask_cors import CORS

#################################################
# Database Setup
#################################################

# Create engine
engine = create_engine("postgresql://postgres:postgres@localhost:5432/Cardiac_final_Db")

# Use AutomapBase instead of declarative_base
Base = automap_base()

# Manually reflect tables using the MetaData object
metadata = MetaData()
metadata.reflect(bind=engine)  # Explicitly bind the engine to metadata

# Map each table from the database schema to an SQLAlchemy class
incidence_rate_myocardial = Table('incidence_rate_myocardial', metadata, autoload_with=engine)
incidence_rates_heart_failure = Table('incidence_rates_heart_failure', metadata, autoload_with=engine)
incidence_rates_ischemics = Table('incidence_rates_ischemics', metadata, autoload_with=engine)
mortality_rate_myocardial = Table('mortality_rate_myocardial', metadata, autoload_with=engine)
mortality_rates_heart_failure = Table('mortality_rates_heart_failure', metadata, autoload_with=engine)
mortality_rates_ischemics = Table('mortality_rates_ischemics', metadata, autoload_with=engine)

# Flask Setup
app = Flask(__name__)
CORS(app)

#################################################
# Flask Routes
@app.route('/')
def home():
    """List all available routes."""
    return (
        """
        Welcome to the Cardiac API!<br/>
        Available Routes:<br/>
        /api/v1.0/incidence_rate_myocardial<br/>
        /api/v1.0/incidence_rates_ischemics<br/>
        /api/v1.0/incidence_rates_heart_failure<br/>
        /api/v1.0/mortality_rates_heart_failure<br/>
        /api/v1.0/mortality_rates_ischemics<br/>
        /api/v1.0/mortality_rate_myocardial<br/>
        """
    )

@app.route('/api/v1.0/incidence_rate_myocardial')
def get_incidence_rate_myocardial():
    return fetch_table_data(incidence_rate_myocardial)

@app.route('/api/v1.0/incidence_rates_ischemics')
def get_incidence_rates_ischemics():
    return fetch_table_data(incidence_rates_ischemics)

@app.route('/api/v1.0/incidence_rates_heart_failure')
def get_incidence_rates_heart_failure():
    return fetch_table_data(incidence_rates_heart_failure)

@app.route('/api/v1.0/mortality_rates_heart_failure')
def get_mortality_rates_heart_failure():
    return fetch_table_data(mortality_rates_heart_failure)

@app.route('/api/v1.0/mortality_rates_ischemics')
def get_mortality_rates_ischemics():
    return fetch_table_data(mortality_rates_ischemics)

@app.route('/api/v1.0/mortality_rate_myocardial')
def get_mortality_rate_myocardial():
    return fetch_table_data(mortality_rate_myocardial)

def fetch_table_data(table):
    """Fetch all data from a table and return as JSON."""
    with Session(bind=engine) as session:
        try:
            results = session.query(table).all()
            data = [
                {column.name: getattr(row, column.name) for column in table.columns}
                for row in results
            ]
            return jsonify(data)
        except Exception as e:
            return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)