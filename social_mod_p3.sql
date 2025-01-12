INSERT INTO Friend (ID1, ID2)
SELECT DISTINCT f1.ID1, f2.ID2
FROM Friend f1
JOIN Friend f2 ON f1.ID2 = f2.ID1
LEFT JOIN Friend f3 ON f1.ID1 = f3.ID2 AND f2.ID2 = f3.ID1
WHERE f1.ID1 <> f2.ID2
  AND f3.ID1 IS NULL;
