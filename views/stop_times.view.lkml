view: stop_times {
  sql_table_name: `dbt_dgeysens.stop_times`
    ;;

  dimension_group: arrival {
    type: time
    sql: ${TABLE}.arrival_time ;;
  }

  dimension: arrivaltest {
    type: string
    sql: ${TABLE}.arrival_time ;;
    # value_format: "00,00,00.00"
  }

  dimension_group: departure {
    type: time
    sql: ${TABLE}.departure_time ;;
  }

  dimension: drop_off_type {
    type: number
    sql: ${TABLE}.drop_off_type ;;
  }

  dimension: pickup_type {
    type: number
    sql: ${TABLE}.pickup_type ;;
  }

  dimension: stop_headsign {
    type: number
    sql: ${TABLE}.stop_headsign ;;
  }

  dimension: stop_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.stop_id ;;
  }

  dimension: stop_sequence {
    type: number
    sql: ${TABLE}.stop_sequence ;;
  }

  dimension: trip_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.trip_id ;;
  }

  measure: count {
    type: count
    drill_fields: [trips.trip_id, stops.stop_id, stops.stop_name]
  }
}
