// Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs

Table user {
  id integer [primary key, increment]
  username varchar
  email varchar
  password varchar
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table role {
  id integer [primary key, increment]
  name varchar
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table user_role {
  id integer [primary key, increment]
  user_id integer
  role_id integer
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table transaction {
  id integer [primary key, increment]
  listing_id integer
  customer_id integer
  date_from timestamp
  date_to timestamp
  rental_length_discount_id integer
  loyalty_discount_id integer
  chassis_number varchar
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table transaction_type {
  id integer [primary key, increment]
  type varchar
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table rental_length_discount {
  id integer [primary key, increment]
  from_day timestamp
  to_day timestamp
  discount_percent integer 
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table loyalty_discount{
  id integer [primary key, increment]
  discount_percent integer
  previous_rental_number integer
  previous_money_spent decimal(20,2)
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table listing {
  id integer [primary key, increment] 
  vehicle_id integer
  transaction_type_id integer
  price decimal(20,2)
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table vehicle {
  id integer [primary key, increment]
  make_id integer
  model_id integer
  engine_id integer
  rim_id integer
  transmission_id integer
  mileage integer
  consumption integer
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table image{
  id integer [primary key, increment]
  image_binary binary
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table image_listing{
  id integer [primary key, increment]
  listing_id integer
  image_id integer
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table engine {
  id integer [primary key, increment]
  type varchar
  power integer
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table model {
  id integer [primary key, increment]
  type varchar
  make_id integer
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table make {
  id integer [primary key, increment]
  type varchar
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table transmission {
  id integer [primary key, increment]
  type varchar
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}

Table rim {
  id integer [primary key, increment]
  size varchar
  active bit
  crd timestamp
  cru integer
  lmd timestamp
  lmu integer
}


Ref: "engine"."id" < "vehicle"."engine_id"

Ref: "rim"."id" < "vehicle"."rim_id"

Ref: "transmission"."id" < "vehicle"."transmission_id"

Ref: "model"."id" < "vehicle"."model_id"

Ref: "make"."id" < "vehicle"."make_id"

Ref: "transaction"."customer_id" > "user"."id"

Ref: "vehicle"."id" < "listing"."vehicle_id"

Ref: "transaction"."listing_id" - "listing"."id"

Ref: "transaction_type"."id" < "listing"."transaction_type_id"

Ref: "transaction"."rental_length_discount_id" > "rental_length_discount"."id"

Ref: "transaction"."loyalty_discount_id" > "loyalty_discount"."id"

Ref: "image_listing"."image_id" > "image"."id"

Ref: "user"."id" < "user_role"."user_id"

Ref: "role"."id" < "user_role"."role_id"

Ref: "listing"."id" < "image_listing"."listing_id"