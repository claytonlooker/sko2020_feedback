connection: "sko_feedback"

# include all the views
include: "/views/**/*.view"

datagroup: sko_feedback_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sko_feedback_default_datagroup

explore: feedback {}

explore: comments {}

explore: scores {
}
