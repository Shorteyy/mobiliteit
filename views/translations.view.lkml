view: translations {
  sql_table_name: `dbt_dgeysens.translations`
    ;;

  dimension: lang {
    type: string
    sql: ${TABLE}.lang ;;
  }

  dimension: trans_id {
    type: string
    sql: ${TABLE}.trans_id ;;
  }

  dimension: translation {
    type: string
    sql: ${TABLE}.translation ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
