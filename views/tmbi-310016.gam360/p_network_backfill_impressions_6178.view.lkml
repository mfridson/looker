view: p_network_backfill_impressions_6178 {
  sql_table_name: `tmbi-310016.gam360.p_NetworkBackfillImpressions_6178`
    ;;

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

  dimension: active_view_eligible_impression {
    type: string
    description: "Indicates if the impression event was eligible for Active View measurement."
    sql: ${TABLE}.ActiveViewEligibleImpression ;;
  }

  dimension: ad_unit_id {
    type: number
    description: "Unique ID for the inventory unit where the ad ran."
    sql: ${TABLE}.AdUnitId ;;
  }

  dimension: advertiser {
    type: string
    sql: ${TABLE}.Advertiser ;;
  }

  dimension: advertiser_id {
    type: number
    description: "Advertiser ID."
    sql: ${TABLE}.AdvertiserId ;;
  }

  dimension: adx_account_id {
    type: string
    sql: ${TABLE}.AdxAccountId ;;
  }

  dimension: anonymous {
    type: yesno
    sql: ${TABLE}.Anonymous ;;
  }

  dimension: audience_segment_ids {
    type: string
    description: "Audience segment ids separated by pipe delimiter (max of 35 segment IDs)"
    sql: ${TABLE}.AudienceSegmentIds ;;
  }

  dimension: band_width {
    type: string
    description: "Name of bandwidth type (e.g., dsl or cable)"
    sql: ${TABLE}.BandWidth ;;
  }

  dimension: bandwidth_group_id {
    type: number
    description: "ID of the bandwidth to match values via the API (1-7)"
    sql: ${TABLE}.BandwidthGroupId ;;
  }

  dimension: bandwidth_id {
    type: number
    description: "Unique identifier for the bandwidth."
    sql: ${TABLE}.BandwidthId ;;
  }

  dimension: browser {
    type: string
    description: "Browser name, version, and subversion"
    sql: ${TABLE}.Browser ;;
  }

  dimension: browser_id {
    type: number
    description: "ID of the browser to match values via the API"
    sql: ${TABLE}.BrowserId ;;
  }

  dimension: buyer {
    type: string
    sql: ${TABLE}.Buyer ;;
  }

  dimension: city {
    type: string
    description: "User City"
    sql: ${TABLE}.City ;;
  }

  dimension: city_id {
    type: number
    description: "ID of the city to match values via the API"
    sql: ${TABLE}.CityId ;;
  }

  dimension: country {
    type: string
    description: "Name of the country where the user resides"
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: country_id {
    type: number
    description: "ID of the country to match values via the API"
    sql: ${TABLE}.CountryId ;;
  }

  dimension: creative_id {
    type: number
    description: "Unique ID for the creative (banner)."
    sql: ${TABLE}.CreativeId ;;
  }

  dimension: creative_size {
    type: string
    description: "Creative size in pixels (width x height)."
    sql: ${TABLE}.CreativeSize ;;
  }

  dimension: creative_size_delivered {
    type: string
    sql: ${TABLE}.CreativeSizeDelivered ;;
  }

  dimension: creative_version {
    type: number
    description: "Creative version number."
    sql: ${TABLE}.CreativeVersion ;;
  }

  dimension: custom_targeting {
    type: string
    description: "Custom Targeting - includes both targeted and non-targeted pairs. Key=value pairs are specified by the publisher and separated by semicolons (;)."
    sql: ${TABLE}.CustomTargeting ;;
  }

  dimension: deal_id {
    type: string
    sql: ${TABLE}.DealId ;;
  }

  dimension: deal_type {
    type: string
    sql: ${TABLE}.DealType ;;
  }

  dimension: device_category {
    type: string
    description: "Device Category (HighEndMobile, MidRangeMobile, Desktop, Tablet)"
    sql: ${TABLE}.DeviceCategory ;;
  }

  dimension: domain {
    type: string
    description: "User Domain"
    sql: ${TABLE}.Domain ;;
  }

  dimension: estimated_backfill_revenue {
    type: number
    description: "Estimated backfill revenue per AdSense/AdExchange impression. This revenue calculation uses the publisher network default currency. This field is reported as a net value."
    sql: ${TABLE}.EstimatedBackfillRevenue ;;
  }

  dimension: event_key_part {
    type: string
    sql: ${TABLE}.EventKeyPart ;;
  }

  dimension: event_time_usec2 {
    type: string
    sql: ${TABLE}.EventTimeUsec2 ;;
  }

  dimension: gfp_content_id {
    type: number
    description: "The video content against which ads were served."
    sql: ${TABLE}.GfpContentId ;;
  }

  dimension: impression_id {
    type: string
    sql: ${TABLE}.ImpressionId ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.IP ;;
  }

  dimension: is_companion {
    type: yesno
    description: "Indicates where event was logged by a companion creative"
    sql: ${TABLE}.IsCompanion ;;
  }

  dimension: is_interstitial {
    type: yesno
    description: "Indicates if event was OOP/Interstitial-type"
    sql: ${TABLE}.IsInterstitial ;;
  }

  dimension: key_part {
    type: string
    description: "Hashed key, Unique Event Identifier in combination with TimeUsec2"
    sql: ${TABLE}.KeyPart ;;
  }

  dimension: line_item_id {
    type: number
    description: "Unique ID of the line item."
    sql: ${TABLE}.LineItemId ;;
  }

  dimension: metro {
    type: string
    description: "Metro area"
    sql: ${TABLE}.Metro ;;
  }

  dimension: metro_id {
    type: number
    description: "ID of the metro area to match values via the API"
    sql: ${TABLE}.MetroId ;;
  }

  dimension: mobile_app_id {
    type: string
    description: "Mobile application ID that requested the ad. For Android, this is the package name. For iOS, this is an integer."
    sql: ${TABLE}.MobileAppId ;;
  }

  dimension: mobile_capability {
    type: string
    description: "Options are \"supports calls\" or \"\""
    sql: ${TABLE}.MobileCapability ;;
  }

  dimension: mobile_carrier {
    type: string
    description: "Name of mobile carrier"
    sql: ${TABLE}.MobileCarrier ;;
  }

  dimension: mobile_device {
    type: string
    description: "Name of the mobile device"
    sql: ${TABLE}.MobileDevice ;;
  }

  dimension: optimization_type {
    type: string
    sql: ${TABLE}.OptimizationType ;;
  }

  dimension: order_id {
    type: number
    description: "Unique ID of the order."
    sql: ${TABLE}.OrderId ;;
  }

  dimension: os {
    type: string
    description: "Operating system name"
    sql: ${TABLE}.OS ;;
  }

  dimension: osid {
    type: number
    description: "ID of the operating system to match values via the API"
    value_format_name: id
    sql: ${TABLE}.OSId ;;
  }

  dimension: osversion {
    type: string
    description: "Operating system version (ie, GreaterThanEqualTo_Android_2_0_0 or Windows2000)"
    sql: ${TABLE}.OSVersion ;;
  }

  dimension: pod_position {
    type: number
    description: "The position of the ad within the pod.  Unknown = 0, 1st position = 1, etc."
    sql: ${TABLE}.PodPosition ;;
  }

  dimension: postal_code {
    type: string
    description: "Postal code (US/Canada)"
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: postal_code_id {
    type: number
    description: "ID of the postal code (US/Canada) to match values via the API"
    sql: ${TABLE}.PostalCodeId ;;
  }

  dimension: product {
    type: string
    description: "Product the event originated from. Possible values are \"Ad Server,\" \"AdExchange\" or \"AdSense\""
    sql: ${TABLE}.Product ;;
  }

  dimension: publisher_provided_id {
    type: string
    description: "The Publisher Provided ID (PPID), encrypted"
    sql: ${TABLE}.PublisherProvidedID ;;
  }

  dimension: referer_url {
    type: string
    description: "Referer URL contains the URL of the page that requested and that will display the ad. Only HTTP and HTTPS URLs are included. Login components of URLS (user:password@) are omitted."
    sql: ${TABLE}.RefererURL ;;
  }

  dimension: region {
    type: string
    description: "Region where the user resides (all countries)"
    sql: ${TABLE}.Region ;;
  }

  dimension: region_id {
    type: number
    description: "ID of the region to match values via the API"
    sql: ${TABLE}.RegionId ;;
  }

  dimension: request_language {
    type: string
    sql: ${TABLE}.RequestLanguage ;;
  }

  dimension: requested_ad_unit_sizes {
    type: string
    description: "Requested inventory unit sizes, formatted as width x height, separated by a pipe delimiter ( | )"
    sql: ${TABLE}.RequestedAdUnitSizes ;;
  }

  dimension: seller_reserve_price {
    type: number
    sql: ${TABLE}.SellerReservePrice ;;
  }

  dimension: serving_restriction {
    type: string
    sql: ${TABLE}.ServingRestriction ;;
  }

  dimension: targeted_custom_criteria {
    type: string
    description: "Custom Targeting - includes keys in the tag that matched lineitem targeting including broad/prefix matched keys"
    sql: ${TABLE}.TargetedCustomCriteria ;;
  }

  dimension: time {
    type: string
    description: "Displays the user local event time in 24-hour format.  Format: YYYY-MM-DD-24HH:MI:SS."
    sql: ${TABLE}.Time ;;
  }

  dimension: time_usec {
    type: number
    description: "DEPRECATED. Use TimeUsec2 for new configs!"
    sql: ${TABLE}.TimeUsec ;;
  }

  dimension: time_usec2 {
    type: number
    description: "Time in microseconds since 1970-01-01 00:00:00:00 UTC."
    sql: ${TABLE}.TimeUsec2 ;;
  }

  dimension: user_id {
    type: string
    description: "Encrypted DoubleClick cookie ID. For iOS mobile apps an encrypted version of Apple Identifier for Advertising (IDFA), for Android apps an encrypted version of the Android Advertising Id (AdId) will be used. If a user browser does not accept cookies, this field will be blank."
    sql: ${TABLE}.UserId ;;
  }

  dimension: video_fallback_position {
    type: number
    description: "Fallback position of a video ad: 0 is for non-fallback ads, 1 is the first fallback ad, 2 is the second fallback ad, etc"
    sql: ${TABLE}.VideoFallbackPosition ;;
  }

  dimension: video_position {
    type: number
    description: "The position of the ad in the video stream.  Unknown = 0, Pre = 1, Post = 3, 1st Mid = 4, 2nd Mid = 5, etc."
    sql: ${TABLE}.VideoPosition ;;
  }

  dimension: yield_group_company_id {
    type: string
    sql: ${TABLE}.YieldGroupCompanyId ;;
  }

  dimension: yield_group_names {
    type: string
    sql: ${TABLE}.YieldGroupNames ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
