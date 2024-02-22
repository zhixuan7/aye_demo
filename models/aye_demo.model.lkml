connection: "aye_connection"

# include all views in this project
include: "/**/*.view"

datagroup: aye_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: aye_face_detect_demo {
  from: aye_face_detect_demo
}

persist_with: aye_demo_default_datagroup
