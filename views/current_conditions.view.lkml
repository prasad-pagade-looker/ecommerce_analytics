view: current_conditions {
  sql_table_name: `bigquery_public_data_looker.current_conditions`
    ;;

  dimension: direction {
    type: string
    sql: ${TABLE}.direction ;;
  }

  dimension: highway {
    type: number
    sql: ${TABLE}.highway ;;
  }

  dimension: lane {
    type: number
    sql: ${TABLE}.lane ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: sensor_id {
    type: string
    sql: ${TABLE}.sensorId ;;
  }

  dimension: speed {
    type: number
    sql: ${TABLE}.speed ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
