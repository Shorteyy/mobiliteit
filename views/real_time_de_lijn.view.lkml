view: real_time_de_lijn {
  sql_table_name: `dbt_dgeysens.real_time_de_lijn`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: delay {
    type: number
    sql: ${TABLE}.delay ;;
  }

  dimension: stopid {
    type: string
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.stopid ;;
  }

  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
  }

  dimension: tripid {
    type: string
    # hidden: yes
    sql: ${TABLE}.tripid ;;
  }

  measure: count {
    type: count
    drill_fields: [id, stops.stop_id, stops.stop_name, trips.trip_id]
  }
  measure: count_delay {
    type:  sum
    sql: ${delay} ;;
  }
}
