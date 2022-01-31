connection: "tmb-all"

# include all the views
include: "/views/**/*.view"

# include all dashboards
#include: "/dashboards/*.dashboard.lookml"

datagroup: marc_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: marc_test_default_datagroup
