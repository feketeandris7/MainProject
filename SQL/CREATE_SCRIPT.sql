CREATE TABLE [user] (
    id INT PRIMARY KEY IDENTITY(1,1),
    username VARCHAR(255),
    email VARCHAR(255),
    [password] VARCHAR(255),
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE role (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(255),
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE user_role (
    id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT,
    role_id INT,
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE [transaction] (
    id INT PRIMARY KEY IDENTITY(1,1),
    listing_id INT,
    customer_id INT,
    date_from DATETIME,
    date_to DATETIME,
    rental_length_discount_id INT,
    loyalty_discount_id INT,
    chassis_number VARCHAR(255),
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE transaction_type (
    id INT PRIMARY KEY IDENTITY(1,1),
    [type] VARCHAR(255),
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE rental_length_discount (
    id INT PRIMARY KEY IDENTITY(1,1),
    from_day DATETIME,
    to_day DATETIME,
    discount_percent INT,
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE loyalty_discount (
    id INT PRIMARY KEY IDENTITY(1,1),
    discount_percent INT,
    previous_rental_number INT,
    previous_money_spent DECIMAL(20,2),
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE listing (
    id INT PRIMARY KEY IDENTITY(1,1),
    vehicle_id INT,
    transaction_type_id INT,
    price DECIMAL(20,2),
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE vehicle (
    id INT PRIMARY KEY IDENTITY(1,1),
    make_id INT,
    model_id INT,
    engine_id INT,
    rim_id INT,
    transmission_id INT,
    mileage INT,
    consumption INT,
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE image (
    id INT PRIMARY KEY IDENTITY(1,1),
    image_binary VARBINARY(MAX),
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE image_listing (
    id INT PRIMARY KEY IDENTITY(1,1),
    listing_id INT,
    image_id INT,
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE engine (
    id INT PRIMARY KEY IDENTITY(1,1),
    [type] VARCHAR(255),
    power INT,
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE model (
    id INT PRIMARY KEY IDENTITY(1,1),
    [type] VARCHAR(255),
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE make (
    id INT PRIMARY KEY IDENTITY(1,1),
    [type] VARCHAR(255),
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE transmission (
    id INT PRIMARY KEY IDENTITY(1,1),
    [type] VARCHAR(255),
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);

CREATE TABLE rim (
    id INT PRIMARY KEY IDENTITY(1,1),
    [size] VARCHAR(255),
    active BIT,
    crd DATETIME,
    cru INT,
    lmd DATETIME,
    lmu INT
);
