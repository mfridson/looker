# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: persistent_layer_prod {
  hidden: yes

  join: persistent_layer_prod__tax_hier1 {
    view_label: "Persistent Layer Prod: Tax Hier1"
    sql: LEFT JOIN UNNEST(${persistent_layer_prod.tax_hier1}) as persistent_layer_prod__tax_hier1 ;;
    relationship: one_to_many
  }

  join: persistent_layer_prod__tax_hier4 {
    view_label: "Persistent Layer Prod: Tax Hier4"
    sql: LEFT JOIN UNNEST(${persistent_layer_prod.tax_hier4}) as persistent_layer_prod__tax_hier4 ;;
    relationship: one_to_many
  }

  join: persistent_layer_prod__tax_hier3 {
    view_label: "Persistent Layer Prod: Tax Hier3"
    sql: LEFT JOIN UNNEST(${persistent_layer_prod.tax_hier3}) as persistent_layer_prod__tax_hier3 ;;
    relationship: one_to_many
  }

  join: persistent_layer_prod__tax_hier2 {
    view_label: "Persistent Layer Prod: Tax Hier2"
    sql: LEFT JOIN UNNEST(${persistent_layer_prod.tax_hier2}) as persistent_layer_prod__tax_hier2 ;;
    relationship: one_to_many
  }
}

view: persistent_layer_prod {
  sql_table_name: `tmbi-310016.persistent_layer.persistent_layer_prod`
    ;;

  dimension: clean_url {
    type: string
    sql: ${TABLE}.clean_url ;;
  }

  dimension: clean_url_short {
    type: string
    sql: ${TABLE}.clean_url_short ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: gam_adserver_impressions {
    type: number
    sql: ${TABLE}.gam_adserver_impressions ;;
  }

  dimension: gam_adserverrevenue {
    type: number
    sql: ${TABLE}.gam_adserverrevenue ;;
  }

  dimension: gam_adx_impressions {
    type: number
    sql: ${TABLE}.gam_adx_impressions ;;
  }

  dimension: gam_adxrevenue {
    type: number
    sql: ${TABLE}.gam_adxrevenue ;;
  }

  dimension: gam_dfp_impressions {
    type: number
    sql: ${TABLE}.gam_dfp_impressions ;;
  }

  dimension: gam_dfp_revenue {
    type: number
    sql: ${TABLE}.gam_dfp_revenue ;;
  }

  dimension: gam_display_dfp_revenue {
    type: number
    sql: ${TABLE}.gam_display_dfp_revenue ;;
  }

  dimension: gam_display_impressions {
    type: number
    sql: ${TABLE}.gam_display_impressions ;;
  }

  dimension: gam_display_revenue {
    type: number
    sql: ${TABLE}.gam_display_revenue ;;
  }

  dimension: gam_eb_impressions {
    type: number
    sql: ${TABLE}.gam_eb_impressions ;;
  }

  dimension: gam_ebrevenue {
    type: number
    sql: ${TABLE}.gam_ebrevenue ;;
  }

  dimension: gam_impressions {
    type: number
    sql: ${TABLE}.gam_impressions ;;
  }

  dimension: gam_intl_dfp_impressions {
    type: number
    sql: ${TABLE}.gam_intl_dfp_impressions ;;
  }

  dimension: gam_intl_dfp_revenue {
    type: number
    sql: ${TABLE}.gam_intl_dfp_revenue ;;
  }

  dimension: gam_intl_impressions {
    type: number
    sql: ${TABLE}.gam_intl_impressions ;;
  }

  dimension: gam_intl_revenue {
    type: number
    sql: ${TABLE}.gam_intl_revenue ;;
  }

  dimension: gam_pdpg_impressions {
    type: number
    sql: ${TABLE}.gam_pdpg_impressions ;;
  }

  dimension: gam_pdpg_revenue {
    type: number
    sql: ${TABLE}.gam_pdpg_revenue ;;
  }

  dimension: gam_revenue {
    type: number
    sql: ${TABLE}.gam_revenue ;;
  }

  dimension: gam_us_dfp_impressions {
    type: number
    sql: ${TABLE}.gam_us_dfp_impressions ;;
  }

  dimension: gam_us_dfp_revenue {
    type: number
    sql: ${TABLE}.gam_us_dfp_revenue ;;
  }

  dimension: gam_us_impressions {
    type: number
    sql: ${TABLE}.gam_us_impressions ;;
  }

  dimension: gam_us_revenue {
    type: number
    sql: ${TABLE}.gam_us_revenue ;;
  }

  dimension: gam_video_dfp_revenue {
    type: number
    sql: ${TABLE}.gam_video_dfp_revenue ;;
  }

  dimension: gam_video_impressions {
    type: number
    sql: ${TABLE}.gam_video_impressions ;;
  }

  dimension: gam_video_revenue {
    type: number
    sql: ${TABLE}.gam_video_revenue ;;
  }

  dimension: hit_id {
    type: string
    sql: ${TABLE}.hit_id ;;
  }

  dimension_group: ingestion {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ingestion_date ;;
  }

  dimension: middle_element {
    type: string
    sql: ${TABLE}.middle_element ;;
  }

  dimension: tax_hier1 {
    hidden: yes
    sql: ${TABLE}.tax_hier1 ;;
  }

  dimension: tax_hier2 {
    hidden: yes
    sql: ${TABLE}.tax_hier2 ;;
  }

  dimension: tax_hier3 {
    hidden: yes
    sql: ${TABLE}.tax_hier3 ;;
  }

  dimension: tax_hier4 {
    hidden: yes
    sql: ${TABLE}.tax_hier4 ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
  }

  dimension: visit_id {
    type: string
    sql: ${TABLE}.visit_id ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.visitor_id ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.website ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: persistent_layer_prod__tax_hier1 {
  dimension: persistent_layer_prod__tax_hier1 {
    type: string
    sql: persistent_layer_prod__tax_hier1 ;;
  }
}

view: persistent_layer_prod__tax_hier4 {
  dimension: persistent_layer_prod__tax_hier4 {
    type: string
    sql: persistent_layer_prod__tax_hier4 ;;
  }
}

view: persistent_layer_prod__tax_hier3 {
  dimension: persistent_layer_prod__tax_hier3 {
    type: string
    sql: persistent_layer_prod__tax_hier3 ;;
  }
}

view: persistent_layer_prod__tax_hier2 {
  dimension: persistent_layer_prod__tax_hier2 {
    type: string
    sql: persistent_layer_prod__tax_hier2 ;;
  }
}
