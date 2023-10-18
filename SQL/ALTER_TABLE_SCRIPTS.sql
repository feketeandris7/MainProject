-- Add Foreign Key Constraints
ALTER TABLE vehicle
ADD CONSTRAINT FK_Vehicle_Engine FOREIGN KEY (engine_id) REFERENCES engine(id);

ALTER TABLE vehicle
ADD CONSTRAINT FK_Vehicle_Rim FOREIGN KEY (rim_id) REFERENCES rim(id);

ALTER TABLE vehicle
ADD CONSTRAINT FK_Vehicle_Transmission FOREIGN KEY (transmission_id) REFERENCES transmission(id);

ALTER TABLE vehicle
ADD CONSTRAINT FK_Vehicle_Model FOREIGN KEY (model_id) REFERENCES model(id);

ALTER TABLE vehicle
ADD CONSTRAINT FK_Vehicle_Make FOREIGN KEY (make_id) REFERENCES make(id);

ALTER TABLE [transaction]
ADD CONSTRAINT FK_Transaction_Customer FOREIGN KEY (customer_id) REFERENCES [user](id);

ALTER TABLE listing
ADD CONSTRAINT FK_Listing_Vehicle FOREIGN KEY (vehicle_id) REFERENCES vehicle(id);

ALTER TABLE [transaction]
ADD CONSTRAINT FK_Transaction_Listing FOREIGN KEY (listing_id) REFERENCES listing(id);

ALTER TABLE listing
ADD CONSTRAINT FK_Listing_TransactionType FOREIGN KEY (transaction_type_id) REFERENCES transaction_type(id);

ALTER TABLE [transaction]
ADD CONSTRAINT FK_Transaction_RentalLengthDiscount FOREIGN KEY (rental_length_discount_id) REFERENCES rental_length_discount(id);

ALTER TABLE [transaction]
ADD CONSTRAINT FK_Transaction_LoyaltyDiscount FOREIGN KEY (loyalty_discount_id) REFERENCES loyalty_discount(id);

ALTER TABLE image_listing
ADD CONSTRAINT FK_Im_List_Image FOREIGN KEY (image_id) REFERENCES image(id);

ALTER TABLE user_role
ADD CONSTRAINT FK_User_Role_User FOREIGN KEY (user_id) REFERENCES [user](id);

ALTER TABLE user_role
ADD CONSTRAINT FK_User_Role_Role FOREIGN KEY (role_id) REFERENCES role(id);

ALTER TABLE image_listing
ADD CONSTRAINT FK_Im_List_Listing FOREIGN KEY (listing_id) REFERENCES listing(id);

ALTER TABLE model
ADD CONSTRAINT FK_Model_Make FOREIGN KEY (make_id) REFERENCES make(id);