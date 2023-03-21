SELECT
  ROUND(MIN(asignature.signature_value), 2) AS faturamento_minimo,
  ROUND(MAX(asignature.signature_value), 2) AS faturamento_maximo,
  ROUND(AVG(asignature.signature_value), 2) AS faturamento_medio,
  ROUND(SUM(asignature.signature_value), 2) AS faturamento_total
FROM
  asignature
  INNER JOIN users ON asignature.signature_id = users.signature_id;