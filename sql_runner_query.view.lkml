view: sql_runner_query {
  derived_table: {
    sql: select brand from products
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  set: detail {
    fields: [brand]
  }
}
