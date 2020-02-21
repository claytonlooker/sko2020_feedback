view: feedback {
  sql_table_name: sko_feedback.feedback ;;

  dimension_group: timestamp {
    type: time
    timeframes: [time, date, week, month, raw]
    sql: ${TABLE}.Timestamp ;;
  }

  dimension: 1_mon_evolve_org_helpful {
    type: string
    sql: ${TABLE}.`Mon_Evolve_Org_Helpful` ;;
  }

  dimension: 1_mon_evolve_org_more {
    type: string
    sql: ${TABLE}.`Mon_Evolve_Org_More` ;;
  }

  dimension: 1_mon_evolve_org_score {
    type: number
    sql: ${TABLE}.`Mon_Evolve_Org_Score` ;;
  }

  measure: 1_mon_evolve_org_score1 {
    type: sum
    sql: ${TABLE}.`Mon_Evolve_Org_Score` ;;
  }

  dimension: 2_mon_pool_comments {
    type: string
    sql: ${TABLE}.`Mon_Pool_Comments` ;;
  }

  dimension: 2_mon_pool_score {
    type: number
    sql: ${TABLE}.`Mon_Pool_Score` ;;
  }

  measure: 2_mon_pool_score1 {
    type: number
    sql: ${TABLE}.`Mon_Pool_Score` ;;
  }

  dimension: 3_tues_deal_reviews_helpful {
    type: string
    sql: ${TABLE}.`Tues_Deal_Reviews_Helpful` ;;
  }

  dimension: 3_tues_deal_reviews_more {
    type: string
    sql: ${TABLE}.`Tues_Deal_Reviews_More` ;;
  }

  dimension: 3_tues_deal_reviews_score {
    type: number
    sql: ${TABLE}.`Tues_Deal_Reviews_Score` ;;
  }

  measure: 3_tues_deal_reviews_score1 {
    type: number
    sql: ${TABLE}.`Tues_Deal_Reviews_Score` ;;
  }

  dimension: 6_wed_ext_frm_lab_helpful {
    type: string
    sql: ${TABLE}.`Wed_Ext_Frm_Lab_Helpful` ;;
  }

  dimension: 6_wed_ext_frm_lab_more {
    type: string
    sql: ${TABLE}.`Wed_Ext_Frm_Lab_More` ;;
  }

  dimension: 6_wed_ext_frm_lab_score {
    type: number
    sql: ${TABLE}.`Wed_Ext_Frm_Lab_Score` ;;
  }

  measure: 6_wed_ext_frm_lab_score1 {
    type: number
    sql: ${TABLE}.`Wed_Ext_Frm_Lab_Score` ;;
  }

  dimension: 4_wed_platform_land_helpful {
    type: string
    sql: ${TABLE}.`Wed_Platform_Land_Helpful` ;;
  }

  dimension: 4_wed_platform_land_more {
    type: string
    sql: ${TABLE}.`Wed_Platform_Land_More` ;;
  }

  dimension: 4_wed_platform_land_score {
    type: number
    sql: ${TABLE}.`Wed_Platform_Land_Score` ;;
  }

  measure: 4_wed_platform_land_score1 {
    type: number
    sql: ${TABLE}.`Wed_Platform_Land_Score` ;;
  }

  dimension: 5_wed_sdk_lab_helpful {
    type: string
    sql: ${TABLE}.`Wed_SDK_Lab_Helpful` ;;
  }

  dimension: 5_wed_sdk_lab_more {
    type: string
    sql: ${TABLE}.`Wed_SDK_Lab_More` ;;
  }

  dimension: 5_wed_sdk_lab_score {
    type: number
    sql: ${TABLE}.`Wed_SDK_Lab_Score` ;;
  }

  measure: 5_wed_sdk_lab_score1 {
    type: number
    sql: ${TABLE}.`Wed_SDK_Lab_Score` ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [1_mon_evolve_org_score, 1_mon_evolve_org_helpful, 1_mon_evolve_org_more, 2_mon_pool_score, 2_mon_pool_comments, 3_tues_deal_reviews_score, 3_tues_deal_reviews_helpful, 3_tues_deal_reviews_more, 4_wed_platform_land_score, 4_wed_platform_land_helpful, 4_wed_platform_land_more, 5_wed_sdk_lab_score, 5_wed_sdk_lab_helpful, 5_wed_sdk_lab_more, 6_wed_ext_frm_lab_score, 6_wed_ext_frm_lab_helpful, 6_wed_ext_frm_lab_more]
  }

}
