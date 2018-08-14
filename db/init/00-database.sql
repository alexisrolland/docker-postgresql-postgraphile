CREATE DATABASE your_database;

\connect your_database;

CREATE SCHEMA your_schema;
CREATE TABLE your_schema.parent_table (
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COMMENT ON TABLE your_schema.parent_table IS
'Provide a description for your parent table.';

CREATE TABLE your_schema.child_table (
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    parent_table_id INTEGER NOT NULL REFERENCES your_schema.parent_table(id)
);

COMMENT ON TABLE your_schema.child_table IS
'Provide a description for your child table.';
