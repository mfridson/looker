view: p_match_table_user_6178 {
  sql_table_name: `tmbi-310016.gam360.p_MatchTableUser_6178`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    description: "The unique ID of the user."
    sql: ${TABLE}.Id ;;
  }

  dimension_group: _partitiondate {
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
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
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
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension: email {
    type: string
    description: "The email or login of the user."
    sql: ${TABLE}.Email ;;
  }

  dimension: external_id {
    type: string
    description: "An identifier for the user that is meaningful to the publisher."
    sql: ${TABLE}.ExternalId ;;
  }

  dimension: is_service_account {
    type: yesno
    description: "True if this user is an OAuth2 service account user, false otherwise."
    sql: ${TABLE}.IsServiceAccount ;;
  }

  dimension: name {
    type: string
    description: "The name of the user."
    sql: ${TABLE}.Name ;;
  }

  dimension: role_id {
    type: number
    description: "The unique role ID of the user. Role objects that are created by Google will have negative IDs."
    sql: ${TABLE}.RoleId ;;
  }

  dimension: role_name {
    type: string
    description: "The name of the Role assigned to the user."
    sql: ${TABLE}.RoleName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, role_name, name]
  }
}
