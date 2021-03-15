view: services {
  sql_table_name: `dbt_dgeysens.services`
    ;;
  drill_fields: [service_id]

  dimension: service_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.service_id ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }

  dimension: friday {
    type: yesno
    sql: ${TABLE}.friday ;;
  }

  dimension: monday {
    type: yesno
    sql: ${TABLE}.monday ;;
  }

  dimension: saturday {
    type: yesno
    sql: ${TABLE}.saturday ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }

  dimension: sunday {
    type: yesno
    sql: ${TABLE}.sunday ;;
  }

  dimension: thursday {
    type: yesno
    sql: ${TABLE}.thursday ;;
  }

  dimension: tuesday {
    type: yesno
    sql: ${TABLE}.tuesday ;;
  }

  dimension: wednesday {
    type: yesno
    sql: ${TABLE}.wednesday ;;
  }

  measure: count {
    type: count
    drill_fields: [service_id, trips.count]
  }
}
