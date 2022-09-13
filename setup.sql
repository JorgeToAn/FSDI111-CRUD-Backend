-- CREATE data_type
CREATE TABLE data_type (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(45),
    summary VARCHAR(512),
    description TEXT
);

-- INSERT 3 records
INSERT INTO data_type (
    name,
    summary,
    description
) VALUES (
    "Integer",
    "Integer values",
    "A data type that stores a whole number"
);

INSERT INTO data_type (
    name,
    summary,
    description
) VALUES (
    "Float",
    "Floating point values",
    "A data type that stores a number with decimal points"
);

INSERT INTO data_type (
    name,
    summary,
    description
) VALUES (
    "Boolean",
    "True or false values",
    "Stores a True or False value, they also can be represented by 1 or 0 respectively"
);