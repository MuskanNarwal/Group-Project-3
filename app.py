# Import the dependencies.
import numpy as np
import pandas as pd
import datetime as dt
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func
from flask import Flask, jsonify


#################################################
# Database Setup
#################################################

engine = create_engine("postgresql://postgres:postgres@localhost:5432/Cardiac_final_Db")

# reflect an existing database into a new model
Base = automap_base()
Base.prepare(autoload_with=engine)
print(Base.classes.keys())
# reflect the tables
Base.prepare(engine, reflect=True)

# Save references to each table

incidence_rate_myocardial=Base.classes.incidence_rate_myocardial
incidence_rates_ischemics=Base.classes.incidence_rates_ischemics
incidence_rates_heart_failure=Base.classes.incidence_rates_heart_failure
mortality_rates_heart_failure=Base.classes.mortality_rates_heart_failure
mortality_rates_ischemics=Base.classes.mortality_rates_ischemics
mortality_rate_myocardial=Base.classes.mortality_rate_myocardial

# Create our session (link) from Python to the DB
session = Session(bind=engine)

#################################################
# Flask Setup
#################################################

app = Flask(__name__)


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

def fetch_table_data(table_class):
    """Fetch all data from a table and return as JSON."""
    session = Session(bind=engine)
    try:
        results = session.query(table_class).all()
        data = [
            {column.name: getattr(row, column.name) for column in table_class.__table__.columns}
            for row in results
        ]
        return jsonify(data)
    finally:
        session.close()


if __name__ == '__main__':
    app.run(debug=True)
