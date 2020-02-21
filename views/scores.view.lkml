view: scores {
  derived_table: {
     sql: SELECT score as score_range
      from (SELECT 1 as score UNION SELECT 2 as score UNION SELECT 3 as score UNION SELECT 4 as score UNION SELECT 5 as score) as t
    ;;
}
  dimension: score {
    type: number
    sql:${TABLE}.score_range ;;
    }
}
