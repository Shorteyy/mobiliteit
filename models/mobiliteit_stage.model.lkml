connection: "mobiliteit"

# include all the views
include: "/views/**/*.view"

datagroup: mobiliteit_stage_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mobiliteit_stage_default_datagroup

explore: my_first_dbt_model {}

explore: my_second_dbt_model {}

explore: real_time_de_lijn {
  join: stops {
    type: left_outer
    sql_on: ${real_time_de_lijn.stopid} = ${stops.stop_id} ;;
    relationship: many_to_one
  }

  join: trips {
    type: left_outer
    sql_on: ${real_time_de_lijn.tripid} = ${trips.trip_id} ;;
    relationship: many_to_one
  }

  join: routes {
    type: left_outer
    sql_on: ${trips.route_id} = ${routes.route_id} ;;
    relationship: many_to_one
  }

  join: services {
    type: left_outer
    sql_on: ${trips.service_id} = ${services.service_id} ;;
    relationship: many_to_one
  }
}

explore: routes {}

explore: services {}

explore: stop_times {
  join: trips {
    type: left_outer
    sql_on: ${stop_times.trip_id} = ${trips.trip_id} ;;
    relationship: many_to_one
  }

  join: stops {
    type: left_outer
    sql_on: ${stop_times.stop_id} = ${stops.stop_id} ;;
    relationship: many_to_one
  }

  join: routes {
    type: left_outer
    sql_on: ${trips.route_id} = ${routes.route_id} ;;
    relationship: many_to_one
  }

  join: services {
    type: left_outer
    sql_on: ${trips.service_id} = ${services.service_id} ;;
    relationship: many_to_one
  }
}

explore: stops {}

explore: translations {}

explore: trips {
  join: routes {
    type: left_outer
    sql_on: ${trips.route_id} = ${routes.route_id} ;;
    relationship: many_to_one
  }

  join: services {
    type: left_outer
    sql_on: ${trips.service_id} = ${services.service_id} ;;
    relationship: many_to_one
  }
}
