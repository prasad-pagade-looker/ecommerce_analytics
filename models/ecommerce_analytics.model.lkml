connection: "bigquery_public_data_looker"

# include all the views
include: "/views/**/*.view"

datagroup: ecommerce_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ecommerce_analytics_default_datagroup

explore: current_conditions {}

##Comments

explore: customer_360 {}

explore: ny_citibike_stations {}

explore: ny_citibike_trips {}
