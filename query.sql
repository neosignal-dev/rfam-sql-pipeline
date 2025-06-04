SELECT rfam_id, description, COUNT(*) AS count
FROM family
JOIN full_region USING (rfam_acc)
GROUP BY rfam_id, description
ORDER BY count DESC
LIMIT 10;
