# If necessary, uncomment the line below to include explore_source.
# include: "vinaytest.model.lkml"

view: dummy_1 {
  derived_table: {
    explore_source: order_items {
      column: id { field: users.id }
      column: country { field: users.country }
      column: total_sale_price {}
    }
  }
  dimension: id {
    description: ""
    type: number
    sql: ${TABLE}.id ;;
    #suggest_explore: order_items
  }
  filter: id_filter {
    type: number
    #suggest_dimension: dummy_1.id

  }
  dimension: country {
    description: ""
    type: string
    sql: ${TABLE}.country ;;
    #suggest_explore: order_items
  }

  dimension: total_sale_price {
    description: ""
    type: number
  }
  # dimension: ids {
  #   type: number
  #   sql: ${id} ;;
  # }
  # filter: idss {
  #   type: number
  #   suggest_dimension: ids

  # }
  # dimension: countryss {
  #   type: string
  #   sql: ${TABLE}.country ;;
  # }
  # filter: country_filter {
  #   type: string
  #   suggest_dimension: countryss
  #}
}
