-- CREATE data_type
CREATE TABLE data_type (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(45),
    summary VARCHAR(512),
    description TEXT,
    pass_by VARCHAR(9),
    example TEXT
);

-- INSERT data types
INSERT INTO data_type (
    name,
    summary,
    description,
    pass_by,
    example
) VALUES (
    "Integer",
    "Integer values",
    "A data type that stores a whole number.",
    "Value",
    "myInt = 5
print(10 + myInt)
Result: 15"
);

INSERT INTO data_type (
    name,
    summary,
    description,
    pass_by,
    example
) VALUES (
    "Float",
    "Floating point values",
    "A data type that stores a number with decimal points.",
    "Value",
    "myFloat = 3.1614
print(myFloat + 10.0)
Result: 13.1614"
);

INSERT INTO data_type (
    name,
    summary,
    description,
    pass_by,
    example
) VALUES (
    "Boolean",
    "True or false values",
    "Stores a True or False value, they also can be represented by 1 or 0 respectively.",
    "Value",
    "myBool = True
if myBool:
    print('The value is true!')
else:
    print('The value is false!')
Result: The value is true!"
);

INSERT INTO data_type (
    name,
    summary,
    description,
    pass_by,
    example
) VALUES (
    "String",
    "Text values",
    "A data type that stores a chain of characters.",
    "Value",
    "myString = 'Jorge'
print('Hello ' + myString)
Result: Hello Jorge"
);

INSERT INTO data_type (
    name,
    summary,
    description,
    pass_by,
    example
) VALUES (
    "List",
    "Collection data type",
    "It can store multiple items into a single variable for ease of access, lists are created with [ ]. They are ordered, changeable and allows duplicate values. Note that the index starts at 0.",
    "Reference",
    "myList = [5, 12, 2, 0]
print(myList[0] + myList[2])
Result: 7"
);

INSERT INTO data_type (
    name,
    summary,
    description,
    pass_by,
    example
) VALUES (
    "Dictionary",
    "Collection data type",
    "Stores multiple data values in key:value pairs, dictionaries are created with { }. They are unordered, changeable and don't allow duplicates. To access a dictionary item you can open brackets and list the key name as a string",
    "Reference",
    "myDict = {'first_name': 'Jorge', 'last_name': 'Tostado'}
print(myDict['first_name'] + ' ' + myDict['last_name'])
Result: Jorge Tostado"
);

INSERT INTO data_type (
    name,
    summary,
    description,
    pass_by,
    example
) VALUES (
    "Tuple",
    "Collection data type",
    "Stores multiple items in a single variable, they are created with ( ). They are ordered, unchangeable and allow duplicate values. Note that the index starts at 0.",
    "Value",
    "myTuple = (1, 2, 3)
print(myTuple[1])
Result: 2"
);