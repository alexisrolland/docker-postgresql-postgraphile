\connect my_database;

CREATE SCHEMA my_schema;
CREATE TABLE my_schema.parent_table (
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COMMENT ON TABLE my_schema.parent_table IS
'Provide a description for your parent table.';

CREATE TABLE my_schema.child_table (
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    parent_table_id INTEGER NOT NULL REFERENCES my_schema.parent_table(id)
);

COMMENT ON TABLE my_schema.child_table IS
'Provide a description for your child table.';
