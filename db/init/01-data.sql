\connect my_database;

INSERT INTO my_schema.parent_table (name, description) VALUES
('Parent name 1', 'Parent description 1'),
('Parent name 2', 'Parent description 2'),
('Parent name 3', 'Parent description 3');

INSERT INTO my_schema.child_table (name, description, parent_table_id) VALUES
('Child name 1', 'Child description 1', 1),
('Child name 2', 'Child description 2', 2),
('Child name 3', 'Child description 3', 3);
