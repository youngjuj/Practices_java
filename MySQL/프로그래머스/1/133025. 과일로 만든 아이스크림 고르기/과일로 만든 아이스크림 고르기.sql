-- 코드를 입력하세요
SELECT FLAVOR
  FROM (
        SELECT FH.FLAVOR, FH.TOTAL_ORDER, II.INGREDIENT_TYPE
          FROM FIRST_HALF FH
        LEFT JOIN(ICECREAM_INFO II)
            ON FH.FLAVOR = II.FLAVOR
         WHERE FH.TOTAL_ORDER >= 3000 AND II.INGREDIENT_TYPE = 'fruit_based'
         ORDER BY FH.TOTAL_ORDER DESC
        ) FHI;