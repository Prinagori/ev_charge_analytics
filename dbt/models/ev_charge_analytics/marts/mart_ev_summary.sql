select
    charger_type,
    avg(cost_usd_per_kwh) as avg_cost_per_kwh,
    avg(usage_stats_per_day) as avg_daily_usage,
    count(*) as total_stations
from {{ ref('stg_ev_charging_stations') }}
group by charger_type
