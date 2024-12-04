CREATE TABLE documents (
    doc_id SERIAL PRIMARY KEY,
    title TEXT,
    content TEXT,
    tsv_content tsvector
);
INSERT INTO documents (title, content, tsv_content) VALUES
('PostgreSQL Guide', 'Learn about PostgreSQL JSON, arrays, and full-text search.', to_tsvector('Learn about PostgreSQL JSON, arrays, and full-text search.')),
('Full-Text Search', 'Using tsvector and tsquery for efficient text search.', to_tsvector('Using tsvector and tsquery for efficient text search.'));


SELECT title
FROM documents
WHERE to_tsvector(content) @@ to_tsquery('PostgreSQL & JSON');

CREATE INDEX idx_tsv_content ON documents USING gin(tsv_content);

SELECT title, ts_headline(content, to_tsquery('PostgreSQL')) AS snippet
FROM documents
WHERE tsv_content @@ to_tsquery('PostgreSQL');
