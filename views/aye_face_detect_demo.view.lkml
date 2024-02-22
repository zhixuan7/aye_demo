view: aye_face_detect_demo {

  sql_table_name: `cmmy-rd-playground.aye_dataset.aye_face_detect_demo` ;;

  dimension: age_group {
    type: string
    sql: ${TABLE}.Age_group ;;
  }
  dimension: average_order_time {
    type: number
    sql: ${TABLE}.average_order_time ;;
  }
  dimension: average_order_value {
    type: number
    sql: ${TABLE}.average_order_value ;;
  }
  dimension: average_order_value_for_cross_sell_up_sell_transactions {
    type: number
    sql: ${TABLE}.average_order_value_for_cross_sell_up_sell_transactions ;;
  }
  dimension: average_satisfaction_rate {
    type: number
    sql: ${TABLE}.average_satisfaction_rate ;;
  }
  dimension: basket_abandonment_rate {
    type: number
    sql: ${TABLE}.Basket_abandonment_rate ;;
  }
  dimension: conversation_rate {
    type: number
    sql: ${TABLE}.conversation_rate ;;
  }
  dimension: country_____________________________________________ {
    type: string
    sql: ${TABLE}.country_____________________________________________ ;;
  }
  dimension: cross_sell_conversation_rate {
    type: number
    sql: ${TABLE}.cross_sell_conversation_rate ;;
  }
  dimension: customer_purchase_propensity {
    type: string
    sql: ${TABLE}.Customer_purchase_propensity ;;
  }
  dimension: engagement_rate {
    type: string
    sql: ${TABLE}.engagement_rate ;;
  }
  dimension: frquency_of_purchase {
    type: number
    sql: ${TABLE}.frquency_of_purchase ;;
  }
  dimension: gender_____________________ {
    type: string
    sql: ${TABLE}.gender_____________________ ;;
  }
  dimension: loyalty_point_discount__used_ {
    type: number
    sql: ${TABLE}.loyalty_point_discount__used_ ;;
  }
  dimension: monetary_discount__used_ {
    type: number
    sql: ${TABLE}.monetary_discount__used_ ;;
  }
  dimension: monetary_of_purchase {
    type: number
    sql: ${TABLE}.monetary_of_purchase ;;
  }
  dimension: preferred_payment_method___________________________ {
    type: string
    sql: ${TABLE}.preferred_payment_method___________________________ ;;
  }
  dimension: product_preference___bitter {
    type: number
    sql: ${TABLE}.Product_Preference___Bitter ;;
  }
  dimension: product_preference___savory {
    type: number
    sql: ${TABLE}.Product_Preference___Savory ;;
  }
  dimension: product_preference___sour {
    type: number
    sql: ${TABLE}.Product_Preference___Sour ;;
  }
  dimension: product_preference___spicy {
    type: number
    sql: ${TABLE}.Product_Preference___Spicy ;;
  }
  dimension: product_preference___sweet {
    type: number
    sql: ${TABLE}.Product_Preference___Sweet ;;
  }
  dimension: product_preference___umami {
    type: number
    sql: ${TABLE}.Product_Preference___Umami ;;
  }
  dimension: recency_of_purchase {
    type: number
    sql: ${TABLE}.recency_of_purchase ;;
  }
  dimension: recency_of_visit {
    type: number
    sql: ${TABLE}.recency_of_visit ;;
  }
  dimension: up_sell_conversation_rate {
    type: number
    sql: ${TABLE}.up_sell_conversation_rate ;;
  }
  measure: recency_of_purchase2 {
    type: sum
    sql: ${TABLE}.recency_of_purchase ;;
  }
  measure: recency_of_visit2 {
    type: sum
    sql: ${TABLE}.recency_of_visit ;;
  }
  measure: frquency_of_purchase2 {
    type: sum
    sql: ${TABLE}.frquency_of_purchase ;;
  }
  measure: product_preference_bitter {
    type: sum
    sql: ${TABLE}.Product_Preference___Bitter ;;
  }
  measure: product_preference_savory {
    type: sum
    sql: ${TABLE}.Product_Preference___Savory ;;
  }
  measure: product_preference_sour {
    type: sum
    sql: ${TABLE}.Product_Preference___Sour ;;
  }
  measure: product_preference_spicy {
    type: sum
    sql: ${TABLE}.Product_Preference___Spicy ;;
  }
  measure: product_preference_sweet {
    type: sum
    sql: ${TABLE}.Product_Preference___Sweet ;;
  }
  measure: product_preference_umami {
    type: sum
    sql: ${TABLE}.Product_Preference___Umami ;;
  }
  measure: average_order_value2 {
    type: sum
    sql:  ${TABLE}.average_order_value ;;
  }
  dimension: gender2 {
    type: string
    sql: case when ${gender_____________________} like "%Famale%"
    then "Female"
    else ${gender_____________________} end;;
  }
  dimension: preferences_flavor {
    type: string
    sql: case
    when ${product_preference___bitter} > ${product_preference___savory}
    and ${product_preference___bitter} > ${product_preference___sweet}
    and ${product_preference___bitter} > ${product_preference___spicy}
    and ${product_preference___bitter} > ${product_preference___umami}
    then "bitter"
    when ${product_preference___spicy} > ${product_preference___savory}
    and ${product_preference___spicy} > ${product_preference___sweet}
    and ${product_preference___spicy} > ${product_preference___bitter}
    and ${product_preference___spicy} > ${product_preference___umami}
    then "spicy"
    when ${product_preference___sweet} > ${product_preference___savory}
    and ${product_preference___sweet} > ${product_preference___spicy}
    and ${product_preference___sweet} > ${product_preference___bitter}
    and ${product_preference___sweet} > ${product_preference___umami}
    then "sweet"
    when ${product_preference___savory} > ${product_preference___sweet}
    and ${product_preference___savory} > ${product_preference___spicy}
    and ${product_preference___savory} > ${product_preference___bitter}
    and ${product_preference___savory} > ${product_preference___umami}
    then "savory"
    when ${product_preference___umami} > ${product_preference___sweet}
    and ${product_preference___umami} > ${product_preference___spicy}
    and ${product_preference___umami} > ${product_preference___bitter}
    and ${product_preference___umami} > ${product_preference___savory}
    then "umami"
    else "umami"
    end
    ;;
  }
  measure: count {
    type: count
  }
}
