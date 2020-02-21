view: comments {
  derived_table: {
    persist_for: "24 hours"
    indexes: ["id"]
    sql:
    SELECT 'Session 1-Helpful' as session, id, SUBSTRING_INDEX(SUBSTRING_INDEX(tablename.`Mon_Evolve_Org_Helpful`, ' ', numbers.n+1), ' ', -1) as `tokens`
      from (
        SELECT
          p0.n
          + p1.n*2
          + p2.n * POWER(2,2)
          + p3.n * POWER(2,3)
          + p4.n * POWER(2,4)
          + p5.n * POWER(2,5)
          + p6.n * POWER(2,6)
          + p7.n * POWER(2,7)
          as n
        FROM
          (SELECT 0 as n UNION SELECT 1) p0,
          (SELECT 0 as n UNION SELECT 1) p1,
          (SELECT 0 as n UNION SELECT 1) p2,
          (SELECT 0 as n UNION SELECT 1) p3,
          (SELECT 0 as n UNION SELECT 1) p4,
          (SELECT 0 as n UNION SELECT 1) p5,
          (SELECT 0 as n UNION SELECT 1) p6,
          (SELECT 0 as n UNION SELECT 1) p7
      ) numbers
      INNER JOIN (
        select id, `Mon_Evolve_Org_Helpful`
        from sko_feedback.feedback
        limit 1000
       ) as tablename
      on CHAR_LENGTH(tablename.`Mon_Evolve_Org_Helpful`) - CHAR_LENGTH(REPLACE(tablename.`Mon_Evolve_Org_Helpful`, ' ', '')) >= numbers.n

    UNION

    SELECT 'Session 1-More' as session, id, SUBSTRING_INDEX(SUBSTRING_INDEX(tablename.`Mon_Evolve_Org_More`, ' ', numbers.n+1), ' ', -1) as `tokens`
      from (
        SELECT
          p0.n
          + p1.n*2
          + p2.n * POWER(2,2)
          + p3.n * POWER(2,3)
          + p4.n * POWER(2,4)
          + p5.n * POWER(2,5)
          + p6.n * POWER(2,6)
          + p7.n * POWER(2,7)
          as n
        FROM
          (SELECT 0 as n UNION SELECT 1) p0,
          (SELECT 0 as n UNION SELECT 1) p1,
          (SELECT 0 as n UNION SELECT 1) p2,
          (SELECT 0 as n UNION SELECT 1) p3,
          (SELECT 0 as n UNION SELECT 1) p4,
          (SELECT 0 as n UNION SELECT 1) p5,
          (SELECT 0 as n UNION SELECT 1) p6,
          (SELECT 0 as n UNION SELECT 1) p7
      ) numbers
      INNER JOIN (
        select id, `Mon_Evolve_Org_More`
        from sko_feedback.feedback
        limit 1000
       ) as tablename
      on CHAR_LENGTH(tablename.`Mon_Evolve_Org_More`) - CHAR_LENGTH(REPLACE(tablename.`Mon_Evolve_Org_More`, ' ', '')) >= numbers.n

    UNION

    SELECT 'Session 2-Comments' as session, id, SUBSTRING_INDEX(SUBSTRING_INDEX(tablename.`Mon_Pool_Comments`, ' ', numbers.n+1), ' ', -1) as `tokens`
      from (
        SELECT
          p0.n
          + p1.n*2
          + p2.n * POWER(2,2)
          + p3.n * POWER(2,3)
          + p4.n * POWER(2,4)
          + p5.n * POWER(2,5)
          + p6.n * POWER(2,6)
          + p7.n * POWER(2,7)
          as n
        FROM
          (SELECT 0 as n UNION SELECT 1) p0,
          (SELECT 0 as n UNION SELECT 1) p1,
          (SELECT 0 as n UNION SELECT 1) p2,
          (SELECT 0 as n UNION SELECT 1) p3,
          (SELECT 0 as n UNION SELECT 1) p4,
          (SELECT 0 as n UNION SELECT 1) p5,
          (SELECT 0 as n UNION SELECT 1) p6,
          (SELECT 0 as n UNION SELECT 1) p7
      ) numbers
      INNER JOIN (
        select id, `Mon_Pool_Comments`
        from sko_feedback.feedback
        limit 1000
       ) as tablename
      on CHAR_LENGTH(tablename.`Mon_Pool_Comments`) - CHAR_LENGTH(REPLACE(tablename.`Mon_Pool_Comments`, ' ', '')) >= numbers.n

    UNION

    SELECT 'Session 3-Helpful' as session, id, SUBSTRING_INDEX(SUBSTRING_INDEX(tablename.`Tues_Deal_Reviews_Helpful`, ' ', numbers.n+1), ' ', -1) as `tokens`
      from (
        SELECT
          p0.n
          + p1.n*2
          + p2.n * POWER(2,2)
          + p3.n * POWER(2,3)
          + p4.n * POWER(2,4)
          + p5.n * POWER(2,5)
          + p6.n * POWER(2,6)
          + p7.n * POWER(2,7)
          as n
        FROM
          (SELECT 0 as n UNION SELECT 1) p0,
          (SELECT 0 as n UNION SELECT 1) p1,
          (SELECT 0 as n UNION SELECT 1) p2,
          (SELECT 0 as n UNION SELECT 1) p3,
          (SELECT 0 as n UNION SELECT 1) p4,
          (SELECT 0 as n UNION SELECT 1) p5,
          (SELECT 0 as n UNION SELECT 1) p6,
          (SELECT 0 as n UNION SELECT 1) p7
      ) numbers
      INNER JOIN (
        select id, `Tues_Deal_Reviews_Helpful`
        from sko_feedback.feedback
        limit 1000
       ) as tablename
      on CHAR_LENGTH(tablename.`Tues_Deal_Reviews_Helpful`) - CHAR_LENGTH(REPLACE(tablename.`Tues_Deal_Reviews_Helpful`, ' ', '')) >= numbers.n

    UNION

    SELECT 'Session 3-More' as session, id, SUBSTRING_INDEX(SUBSTRING_INDEX(tablename.`Tues_Deal_Reviews_More`, ' ', numbers.n+1), ' ', -1) as `tokens`
      from (
        SELECT
          p0.n
          + p1.n*2
          + p2.n * POWER(2,2)
          + p3.n * POWER(2,3)
          + p4.n * POWER(2,4)
          + p5.n * POWER(2,5)
          + p6.n * POWER(2,6)
          + p7.n * POWER(2,7)
          as n
        FROM
          (SELECT 0 as n UNION SELECT 1) p0,
          (SELECT 0 as n UNION SELECT 1) p1,
          (SELECT 0 as n UNION SELECT 1) p2,
          (SELECT 0 as n UNION SELECT 1) p3,
          (SELECT 0 as n UNION SELECT 1) p4,
          (SELECT 0 as n UNION SELECT 1) p5,
          (SELECT 0 as n UNION SELECT 1) p6,
          (SELECT 0 as n UNION SELECT 1) p7
      ) numbers
      INNER JOIN (
        select id, `Tues_Deal_Reviews_More`
        from sko_feedback.feedback
        limit 1000
       ) as tablename
      on CHAR_LENGTH(tablename.`Tues_Deal_Reviews_More`) - CHAR_LENGTH(REPLACE(tablename.`Tues_Deal_Reviews_More`, ' ', '')) >= numbers.n

    UNION

    SELECT 'Session 4-Helpful' as session, id, SUBSTRING_INDEX(SUBSTRING_INDEX(tablename.`Wed_Platform_Land_Helpful`, ' ', numbers.n+1), ' ', -1) as `tokens`
      from (
        SELECT
          p0.n
          + p1.n*2
          + p2.n * POWER(2,2)
          + p3.n * POWER(2,3)
          + p4.n * POWER(2,4)
          + p5.n * POWER(2,5)
          + p6.n * POWER(2,6)
          + p7.n * POWER(2,7)
          as n
        FROM
          (SELECT 0 as n UNION SELECT 1) p0,
          (SELECT 0 as n UNION SELECT 1) p1,
          (SELECT 0 as n UNION SELECT 1) p2,
          (SELECT 0 as n UNION SELECT 1) p3,
          (SELECT 0 as n UNION SELECT 1) p4,
          (SELECT 0 as n UNION SELECT 1) p5,
          (SELECT 0 as n UNION SELECT 1) p6,
          (SELECT 0 as n UNION SELECT 1) p7
      ) numbers
      INNER JOIN (
        select id, `Wed_Platform_Land_Helpful`
        from sko_feedback.feedback
        limit 1000
       ) as tablename
      on CHAR_LENGTH(tablename.`Wed_Platform_Land_Helpful`) - CHAR_LENGTH(REPLACE(tablename.`Wed_Platform_Land_Helpful`, ' ', '')) >= numbers.n

    UNION

    SELECT 'Session 4-More' as session, id, SUBSTRING_INDEX(SUBSTRING_INDEX(tablename.`Wed_Platform_Land_More`, ' ', numbers.n+1), ' ', -1) as `tokens`
      from (
        SELECT
          p0.n
          + p1.n*2
          + p2.n * POWER(2,2)
          + p3.n * POWER(2,3)
          + p4.n * POWER(2,4)
          + p5.n * POWER(2,5)
          + p6.n * POWER(2,6)
          + p7.n * POWER(2,7)
          as n
        FROM
          (SELECT 0 as n UNION SELECT 1) p0,
          (SELECT 0 as n UNION SELECT 1) p1,
          (SELECT 0 as n UNION SELECT 1) p2,
          (SELECT 0 as n UNION SELECT 1) p3,
          (SELECT 0 as n UNION SELECT 1) p4,
          (SELECT 0 as n UNION SELECT 1) p5,
          (SELECT 0 as n UNION SELECT 1) p6,
          (SELECT 0 as n UNION SELECT 1) p7
      ) numbers
      INNER JOIN (
        select id, `Wed_Platform_Land_More`
        from sko_feedback.feedback
        limit 1000
       ) as tablename
      on CHAR_LENGTH(tablename.`Wed_Platform_Land_More`) - CHAR_LENGTH(REPLACE(tablename.`Wed_Platform_Land_More`, ' ', '')) >= numbers.n
    UNION

    SELECT 'Session 5-Helpful' as session, id, SUBSTRING_INDEX(SUBSTRING_INDEX(tablename.`Wed_SDK_Lab_Helpful`, ' ', numbers.n+1), ' ', -1) as `tokens`
      from (
        SELECT
          p0.n
          + p1.n*2
          + p2.n * POWER(2,2)
          + p3.n * POWER(2,3)
          + p4.n * POWER(2,4)
          + p5.n * POWER(2,5)
          + p6.n * POWER(2,6)
          + p7.n * POWER(2,7)
          as n
        FROM
          (SELECT 0 as n UNION SELECT 1) p0,
          (SELECT 0 as n UNION SELECT 1) p1,
          (SELECT 0 as n UNION SELECT 1) p2,
          (SELECT 0 as n UNION SELECT 1) p3,
          (SELECT 0 as n UNION SELECT 1) p4,
          (SELECT 0 as n UNION SELECT 1) p5,
          (SELECT 0 as n UNION SELECT 1) p6,
          (SELECT 0 as n UNION SELECT 1) p7
      ) numbers
      INNER JOIN (
        select id, `Wed_SDK_Lab_Helpful`
        from sko_feedback.feedback
        limit 1000
       ) as tablename
      on CHAR_LENGTH(tablename.`Wed_SDK_Lab_Helpful`) - CHAR_LENGTH(REPLACE(tablename.`Wed_SDK_Lab_Helpful`, ' ', '')) >= numbers.n

    UNION

    SELECT 'Session 5-More' as session, id, SUBSTRING_INDEX(SUBSTRING_INDEX(tablename.`Wed_SDK_Lab_More`, ' ', numbers.n+1), ' ', -1) as `tokens`
      from (
        SELECT
          p0.n
          + p1.n*2
          + p2.n * POWER(2,2)
          + p3.n * POWER(2,3)
          + p4.n * POWER(2,4)
          + p5.n * POWER(2,5)
          + p6.n * POWER(2,6)
          + p7.n * POWER(2,7)
          as n
        FROM
          (SELECT 0 as n UNION SELECT 1) p0,
          (SELECT 0 as n UNION SELECT 1) p1,
          (SELECT 0 as n UNION SELECT 1) p2,
          (SELECT 0 as n UNION SELECT 1) p3,
          (SELECT 0 as n UNION SELECT 1) p4,
          (SELECT 0 as n UNION SELECT 1) p5,
          (SELECT 0 as n UNION SELECT 1) p6,
          (SELECT 0 as n UNION SELECT 1) p7
      ) numbers
      INNER JOIN (
        select id, `Wed_SDK_Lab_More`
        from sko_feedback.feedback
        limit 1000
       ) as tablename
      on CHAR_LENGTH(tablename.`Wed_SDK_Lab_More`) - CHAR_LENGTH(REPLACE(tablename.`Wed_SDK_Lab_More`, ' ', '')) >= numbers.n
    UNION

    SELECT 'Session 6-Helpful' as session, id, SUBSTRING_INDEX(SUBSTRING_INDEX(tablename.`Wed_Ext_Frm_Lab_Helpful`, ' ', numbers.n+1), ' ', -1) as `tokens`
      from (
        SELECT
          p0.n
          + p1.n*2
          + p2.n * POWER(2,2)
          + p3.n * POWER(2,3)
          + p4.n * POWER(2,4)
          + p5.n * POWER(2,5)
          + p6.n * POWER(2,6)
          + p7.n * POWER(2,7)
          as n
        FROM
          (SELECT 0 as n UNION SELECT 1) p0,
          (SELECT 0 as n UNION SELECT 1) p1,
          (SELECT 0 as n UNION SELECT 1) p2,
          (SELECT 0 as n UNION SELECT 1) p3,
          (SELECT 0 as n UNION SELECT 1) p4,
          (SELECT 0 as n UNION SELECT 1) p5,
          (SELECT 0 as n UNION SELECT 1) p6,
          (SELECT 0 as n UNION SELECT 1) p7
      ) numbers
      INNER JOIN (
        select id, `Wed_Ext_Frm_Lab_Helpful`
        from sko_feedback.feedback
        limit 1000
       ) as tablename
      on CHAR_LENGTH(tablename.`Wed_Ext_Frm_Lab_Helpful`) - CHAR_LENGTH(REPLACE(tablename.`Wed_Ext_Frm_Lab_Helpful`, ' ', '')) >= numbers.n

    UNION

    SELECT 'Session 6-More' as session, id, SUBSTRING_INDEX(SUBSTRING_INDEX(tablename.`Wed_Ext_Frm_Lab_More`, ' ', numbers.n+1), ' ', -1) as `tokens`
      from (
        SELECT
          p0.n
          + p1.n*2
          + p2.n * POWER(2,2)
          + p3.n * POWER(2,3)
          + p4.n * POWER(2,4)
          + p5.n * POWER(2,5)
          + p6.n * POWER(2,6)
          + p7.n * POWER(2,7)
          as n
        FROM
          (SELECT 0 as n UNION SELECT 1) p0,
          (SELECT 0 as n UNION SELECT 1) p1,
          (SELECT 0 as n UNION SELECT 1) p2,
          (SELECT 0 as n UNION SELECT 1) p3,
          (SELECT 0 as n UNION SELECT 1) p4,
          (SELECT 0 as n UNION SELECT 1) p5,
          (SELECT 0 as n UNION SELECT 1) p6,
          (SELECT 0 as n UNION SELECT 1) p7
      ) numbers
      INNER JOIN (
        select id, `Wed_Ext_Frm_Lab_More`
        from sko_feedback.feedback
        limit 1000
       ) as tablename
      on CHAR_LENGTH(tablename.`Wed_Ext_Frm_Lab_More`) - CHAR_LENGTH(REPLACE(tablename.`Wed_Ext_Frm_Lab_More`, ' ', '')) >= numbers.n

      ;;
  }

  dimension: session {
    type: string
    sql:${TABLE}.`session` ;;
  }
  dimension: tokens {
    type: string
    sql:${TABLE}.`tokens` ;;
  }
  measure: word_count {
    type: count
  }
}
