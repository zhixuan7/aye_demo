connection: "aye_connection"

# include all views in this project
include: "/**/*.view"

datagroup: aye_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: store_A {
  from: store_A
}

persist_with: aye_demo_default_datagroup
