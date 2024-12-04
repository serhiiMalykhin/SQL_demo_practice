CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name TEXT,
    roles TEXT[]
);
INSERT INTO users (name, roles) VALUES
('Alice', ARRAY['admin', 'editor']),
('Bob', ARRAY['viewer']),
('Charlie', ARRAY['editor', 'viewer']);

SELECT name
FROM users
WHERE 'editor' = ANY(roles);


SELECT name, unnest(roles) AS role
FROM users;

UPDATE users
SET roles = array_append(roles, 'superuser')
WHERE name = 'Bob';

UPDATE users SET roles = array_remove(roles, 'super_admin')
WHERE name = 'Bob';

--Index Arrays
CREATE INDEX idx_roles ON users USING gin(roles);
