view: routes {
  sql_table_name: `dbt_dgeysens.routes`
    ;;
  drill_fields: [route_id]

  dimension: route_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.route_id ;;
  }

  dimension: route_color {
    type: string
    sql: ${TABLE}.route_color ;;
  }

  dimension: route_desc {
    type: string
    sql: ${TABLE}.route_desc ;;
  }

  dimension: route_long_name {
    type: string
    sql: ${TABLE}.route_long_name ;;
  }

  dimension: route_short_name {
    type: string
    sql: ${TABLE}.route_short_name ;;
  }

  dimension: route_text_color {
    type: string
    sql: ${TABLE}.route_text_color ;;
  }

  dimension: route_type {
    type: string
    sql: ${TABLE}.route_type ;;
  }

  measure: count {
    type: count
    drill_fields: [route_id, route_long_name, route_short_name, trips.count]
  }
}
