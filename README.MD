# EV Charging Analytics using dbt, Snowflake & Looker

This project demonstrates building an **end-to-end data analytics pipeline** for EV Charging Stations. It uses **dbt** for data transformation, **Snowflake** as the data warehouse, and **Looker Studio** for visualization. The objective is to create a scalable data model and an interactive dashboard for key EV infrastructure metrics.

---

## Problem Statement

Can we build a system to:

- Standardize and transform raw EV charging station data for analytics.
- Monitor key metrics like **total stations, cost per kWh, daily usage, renewable energy adoption**.
- Provide a **visual dashboard** for decision-making on EV infrastructure.

---

## Dataset

- **Source:** Raw EV charging station dataset loaded into **Snowflake**.
- **Fields include:**  
  `STATION_ID`, `ADDRESS`, `CHARGER_TYPE`, `COST_USD_PER_KWH`,  
  `USAGE_STATS_PER_DAY`, `CHARGING_CAPACITY_KW`, `RENEWABLE_ENERGY_SOURCE`, `INSTALLATION_YEAR`, etc.
- **Volume:** ~5,000 records (sample dataset).

**Preprocessing Done:**
- Renamed columns for consistency.
- Standardized units for cost and charging capacity.
- Removed invalid or missing data.

---

## Data Pipeline

- **Raw Layer:** Original dataset stored in `RAW.EV_CHARGING_STATIONS`.
- **Staging Layer:** Cleaned and standardized data (`stg_ev_charging_stations.sql`).
- **Mart Layer:** Aggregated metrics (`mart_ev_summary.sql`).

**Transformations included:**
- Standardizing column names.
- Aggregating metrics such as:
  - `avg_cost_per_kwh`
  - `avg_daily_usage`
  - `% renewable energy adoption`

---

## Dashboard (Looker Studio)

The dashboard consists of:

- **KPIs:**
  - Total Stations
  - Average Cost per kWh
  - Average Daily Usage
  - Renewable Energy Adoption (%)
- **Visuals:**
  - Bar Chart: Stations by Charger Type
  - Scatter Plot: Charging Capacity vs Daily Usage
  - Pie Chart: Renewable vs Non-Renewable Energy Sources

**Example Layout:**
- Top Section: KPI Cards
- Middle Section: Usage vs Capacity Chart
- Bottom Section: Charger Type Distribution

---

## Tech Stack

- **Data Warehouse:** Snowflake  
- **Transformation:** dbt  
- **Visualization:** Looker Studio  
- **Version Control:** Git & GitHub  

---

## How to Run

### 1. Clone the Repository
```bash
git clone https://github.com/Prinagori/ev_charge_analytics.git
cd ev_charge_analytics
