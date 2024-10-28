SELECT 
    u.id AS user_id, 
    u.username,
    r.name AS rol
FROM 
    user u
JOIN user_role ur ON u.id = ur.user_id
JOIN role r ON ur.role_id = r.id
WHERE u.username = 'alice.wonder' AND u.password = 'password123';