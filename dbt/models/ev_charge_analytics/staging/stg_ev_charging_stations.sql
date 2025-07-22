with source as (
    select * from {{ source('raw', 'ev_charging_stations') }}
),

renamed as (
    select
        station_id,
        latitude,
        longitude,
        lower(address) as address,
        charger_type,
        cost_usd_per_kwh,
        availability,
        distance_to_city_km,
        usage_stats_per_day,
        station_operator,
        charging_capacity_kw,
        connector_types,
        installation_year,
        renewable_energy_source,
        reviews_rating,
        parking_spots,
        maintenance_frequency
    from source
)

select * from renamed