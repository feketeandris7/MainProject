-- Add foreign key constraint between engine and vehicle tables
ALTER TABLE vehicle
ADD CONSTRAINT FK_Engine_Vehicle FOREIGN KEY (engine_id) REFERENCES engine(id);

-- Add foreign key constraint between rim and vehicle tables
ALTER TABLE vehicle
ADD CONSTRAINT FK_Rim_Vehicle FOREIGN KEY (rim_id) REFERENCES rim(id);

-- Add foreign key constraint between transmission and vehicle tables
ALTER TABLE vehicle
ADD CONSTRAINT FK_Transmission_Vehicle FOREIGN KEY (transmission_id) REFERENCES transmission(id);

-- Add foreign key constraint between model and vehicle tables
ALTER TABLE vehicle
ADD CONSTRAINT FK_Model_Vehicle FOREIGN KEY (model_id) REFERENCES model(id);

-- Add foreign key constraint between make and vehicle tables
ALTER TABLE vehicle
ADD CONSTRAINT FK_Make_Vehicle FOREIGN KEY (make_id) REFERENCES make(id);

-- Add foreign key constraint between role and user tables
ALTER TABLE user
ADD CONSTRAINT FK_Role_User FOREIGN KEY (role_id) REFERENCES role(id);

-- Add foreign key constraint between user and transaction tables
ALTER TABLE transaction
ADD CONSTRAINT FK_User_Transaction FOREIGN KEY (customer_id) REFERENCES user(id);

-- Add foreign key constraint between vehicle and listing tables
ALTER TABLE listing
ADD CONSTRAINT FK_Vehicle_Listing FOREIGN KEY (vehicle_id) REFERENCES vehicle(id);

-- Add foreign key constraint between transaction and listing tables
ALTER TABLE transaction
ADD CONSTRAINT FK_Transaction_Listing FOREIGN KEY (listing_id) REFERENCES listing(id);

-- Add foreign key constraint between transaction_type and listing tables
ALTER TABLE listing
ADD CONSTRAINT FK_TransactionType_Listing FOREIGN KEY (transaction_type_id) REFERENCES transaction_type(id);

-- Add foreign key constraint between transaction and rental_length_discount tables
ALTER TABLE transaction
ADD CONSTRAINT FK_RentalLengthDiscount_Transaction FOREIGN KEY (rental_length_discount_id) REFERENCES rental_length_discount(id);

-- Add foreign key constraint between transaction and loyalty_discount tables
ALTER TABLE transaction
ADD CONSTRAINT FK_LoyaltyDiscount_Transaction FOREIGN KEY (loyalty_discount_id) REFERENCES loyalty_discount(id);

-- Add image to vehicle
ALTER TABLE vehicle
ADD CONSTRAINT FK_Vehicle_Image FOREIGN KEY (image_id) REFERENCES image(id);