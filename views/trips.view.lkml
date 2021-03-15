view: trips {
  sql_table_name: `dbt_dgeysens.trips`
    ;;
  drill_fields: [trip_id]

  dimension: trip_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.trip_id ;;
  }

  dimension: direction_id {
    type: number
    sql: ${TABLE}.direction_id ;;
  }

  dimension: route_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.route_id ;;
  }

  dimension: service_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.service_id ;;
  }

  dimension: trip_headsign {
    type: string
    sql: ${TABLE}.trip_headsign ;;
  }

  dimension: trip_short {
    type: string
    sql: ${TABLE}.trip_short ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      trip_id,
      routes.route_id,
      routes.route_long_name,
      routes.route_short_name,
      services.service_id,
      real_time_de_lijn.count,
      stop_times.count
    ]
  }
}
