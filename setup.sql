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
    "A data type that stores a whole number."
);

INSERT INTO data_type (
    name,
    summary,
    description
) VALUES (
    "Float",
    "Floating point values",
    "A data type that stores a number with decimal points."
);

INSERT INTO data_type (
    name,
    summary,
    description
) VALUES (
    "Boolean",
    "True or false values",
    "Stores a True or False value, they also can be represented by 1 or 0 respectively."
);

INSERT INTO data_type (
    name,
    summary,
    description
) VALUES (
    "String",
    "Text values",
    "A data type that stores a chain of characters."
);

INSERT INTO data_type (
    name,
    summary,
    description
) VALUES (
    "List",
    "Collection data type",
    "It can store multiple items into a single variable for ease of access, lists are created with []. They are ordered, changeable and allows duplicate values."
);

INSERT INTO data_type (
    name,
    summary,
    description
) VALUES (
    "Dictionary",
    "Collection data type",
    "Stores multiple data values in key:value pairs, dictionaries are created with {}. They are unordered, changeable and don't allow duplicates."
);

INSERT INTO data_type (
    name,
    summary,
    description
) VALUES (
    "Tuple",
    "Collection data type",
    "Stores multiple items in a single variable, they are created with (). They are ordered, unchangeable and allow duplicate values."
);