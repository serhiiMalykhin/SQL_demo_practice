# SQL demo practice
this is just for demo purpose
to show possible SQL practices


## Practice include
1. Core SQL Concepts
   - Data Definition Language (DDL):
      - Creating, altering, and dropping tables, views, and indexes.
      - Constraints (e.g., PRIMARY KEY, FOREIGN KEY, UNIQUE, CHECK, DEFAULT).
   - Data Manipulation Language (DML):
     - INSERT, UPDATE, DELETE, and SELECT.
     - Using aggregate functions (SUM, AVG, COUNT, etc.) and GROUP BY.
   - Data Control Language (DCL):
     - GRANT, REVOKE, and managing user permissions.
   - Transactions:
     Using COMMIT, ROLLBACK, and SAVEPOINT effectively.
2. Joins and Set Operations
   - Mastering all types of joins:
      - INNER, LEFT, RIGHT, FULL OUTER, CROSS, and SELF joins.
   - Using set operations like UNION, UNION ALL, INTERSECT, and EXCEPT.
3. Advanced Query Techniques
   - Subqueries:
      - Correlated subqueries.
      - EXISTS and NOT EXISTS.
   - Window Functions:
     - ROW_NUMBER(), RANK(), DENSE_RANK(), NTILE().
     - Using PARTITION BY and ORDER BY for analytical queries.
   - Recursive Queries:
      - Using Common Table Expressions (CTEs) for hierarchical data.
   - CTEs and Materialized CTEs:
      - Advanced use of WITH statements and performance considerations.
4. Indexing and Performance Optimization
   - Index types:
      - B-tree, hash, GIN, GiST, BRIN.
   - Execution Plans:
   - Using EXPLAIN and EXPLAIN ANALYZE to optimize queries.
   - Understanding query optimization strategies like indexing, reducing table scans, and avoiding Cartesian products.
   - Vacuum and Analyze: Maintaining table performance in PostgreSQL.
5. Partitioning and Sharding
   - Table partitioning:
     - RANGE, LIST, and HASH partitioning.
   - Sharding strategies for distributed databases.
6. Working with Complex Data
   - JSON/JSONB:
     - Querying, indexing, and updating JSON data in PostgreSQL.
   - Arrays:
     - Array functions, unnesting arrays, and indexing arrays.
   - Full-Text Search:
     - Using tsvector and tsquery for search functionalities.
7. Procedural SQL and Automation(same as demo)
   - Writing stored procedures and functions:
     - Using procedural languages like PL/pgSQL.
   - Triggers:
     - Automating actions on INSERT, UPDATE, and DELETE.
   - Event Triggers: For database-level events.
8. Advanced Database Features (same as demo)
   - Views:
    - Standard and materialized views.
   - Temporary Tables:
     - Creating and working with temporary tables.
   - Custom Data Types: Using domains and user-defined types.
   - Foreign Data Wrappers (FDWs):
      -Querying external databases.
9. Parallel and Batch Processing
   - Parallel query execution.
   - Bulk inserts and updates.