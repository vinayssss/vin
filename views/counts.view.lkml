view: counts {
  derived_table: {
    sql: select created_at, count (*) as id
         from (
        select created_at from order_items
          group by created_at
          order by created_at desc
          limit 2)
          subquery
          group by created_at;;
  }
  # dimension: id {
  #   type: number
  #   primary_key: yes
  #   sql: ${TABLE}.id ;;
  # }
  dimension: created_at {
    type: date
    sql: ${TABLE}.created_at ;;
  }
  measure: id {
    type: count_distinct
    sql: ${TABLE}.id ;;
    drill_fields: [created_at]
  }
  }
