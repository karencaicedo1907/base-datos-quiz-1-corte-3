SELECT 
    r.name AS rol,
    m.name AS modulo,
    v.name AS vista
FROM 
    role r
JOIN 
    user_role ur ON r.id = ur.role_id
JOIN 
    user u ON ur.user_id = u.id
JOIN 
    role_module rm ON r.id = rm.role_id
JOIN 
    module m ON rm.module_id = m.id
JOIN 
    module_view mv ON m.id = mv.module_id
JOIN 
    view v ON mv.view_id = v.id;