view: stops {
  sql_table_name: `dbt_dgeysens.stops`
    ;;
  drill_fields: [stop_id]

  dimension: stop_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.stop_id ;;
  }

  dimension: location_type {
    type: number
    sql: ${TABLE}.location_type ;;
  }

  dimension: parent_station {
    type: string
    sql: ${TABLE}.parent_station ;;
  }

  dimension: platform_code {
    type: string
    sql: ${TABLE}.platform_code ;;
  }

  dimension: stop_code {
    type: string
    sql: ${TABLE}.stop_code ;;
  }

  dimension: stop_desc {
    type: string
    sql: ${TABLE}.stop_desc ;;
  }

  dimension: stop_lat {
    type: number
    sql: ${TABLE}.stop_lat ;;
  }

  dimension: stop_lon {
    type: number
    sql: ${TABLE}.stop_lon ;;
  }

  dimension: stop_name {
    type: string
    sql: ${TABLE}.stop_name ;;
  }

  dimension: stop_url {
    type: string
    sql: ${TABLE}.stop_url ;;
  }

  dimension: zone_id {
    type: string
    sql: ${TABLE}.zone_id ;;
  }

  measure: count {
    type: count
    drill_fields: [stop_id, stop_name, real_time_de_lijn.count, stop_times.count]
  }
}
