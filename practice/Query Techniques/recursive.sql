CREATE TABLE filesystem (
    file_id SERIAL PRIMARY KEY,
    file_name VARCHAR(100),
    parent_id INT -- This column references the parent directory
);

INSERT INTO filesystem (file_name, parent_id)
VALUES
    ('root', NULL),  -- Root directory
    ('docs', 1),     -- docs is a subdirectory of root
    ('images', 1),   -- images is a subdirectory of root
    ('file1.txt', 2), -- file1.txt is a file inside docs
    ('file2.txt', 3); -- file2.txt is a file inside images

WITH RECURSIVE file_structure AS (
    -- Base case: select root directory
    SELECT file_id, file_name, parent_id
    FROM filesystem
    WHERE parent_id IS NULL

    UNION ALL

    -- Recursive case: find subdirectories and files
    SELECT f.file_id, f.file_name, f.parent_id
    FROM filesystem f
    INNER JOIN file_structure fs
        ON f.parent_id = fs.file_id  -- Join to find subdirectories
)
SELECT * FROM file_structure;
