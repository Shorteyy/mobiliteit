view: my_second_dbt_model {
  sql_table_name: `dbt_dgeysens.my_second_dbt_model`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
