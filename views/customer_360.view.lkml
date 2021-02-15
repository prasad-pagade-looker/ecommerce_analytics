view: customer_360 {
  sql_table_name: `bigquery_public_data_looker.customer_360`
    ;;

    ### Comments ######

  dimension: avg_review_star_rating {
    type: number
    sql: ${TABLE}.avg_review_star_rating ;;
  }

  dimension: count_cancelled_orders {
    type: number
    sql: ${TABLE}.count_cancelled_orders ;;
  }

  dimension: count_total_orders {
    type: number
    sql: ${TABLE}.count_total_orders ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: days_since_first_order {
    type: number
    sql: ${TABLE}.days_since_first_order ;;
  }

  dimension: days_since_last_order {
    type: number
    sql: ${TABLE}.days_since_last_order ;;
  }

  dimension: purchase_frequency {
    type: number
    sql: ${TABLE}.purchase_frequency ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
