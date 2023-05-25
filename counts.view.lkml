view: counts {
  derived_table: {
    sql: select created_at, count (*) as id
         from order_items
          group by created_at;;
  }
  dimension: created_at {
    type: date
    sql: ${TABLE}.created_at ;;
  }
  measure: id {
    type: count
    sql: ${TABLE}.id ;;
    drill_fields: [created_at]
  }
  }
