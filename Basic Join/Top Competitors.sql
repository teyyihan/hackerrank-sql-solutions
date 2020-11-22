SELECT s.hacker_id, h.name
FROM Submissions AS s
    INNER JOIN Challenges AS c ON s.challenge_id = c.challenge_id
    INNER JOIN Hackers AS h ON s.hacker_id = h.hacker_id
    INNER JOIN Difficulty AS d ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
group by h.hacker_id, h.name
HAVING COUNT(s.hacker_id)  > 1
ORDER BY COUNT(s.hacker_id) desc, s.hacker_id asc