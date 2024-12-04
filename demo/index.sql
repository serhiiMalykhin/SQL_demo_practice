-- Create an index on department_id for faster joins
CREATE INDEX idx_department_id ON employees(department_id);
