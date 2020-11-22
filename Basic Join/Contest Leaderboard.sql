SELECT s.hacker_id, h.name, SUM(s.score) AS scr
FROM (
    SELECT hacker_id, MAX(score) AS score
    FROM Submissions
    GROUP BY hacker_id, challenge_id
) s
INNER JOIN Hackers h ON s.hacker_id = h.hacker_id
GROUP BY s.hacker_id, h.name
HAVING scr > 0
ORDER BY scr DESC, s.hacker_id ASC
