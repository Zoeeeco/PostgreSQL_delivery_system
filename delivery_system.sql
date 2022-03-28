--This is a dilivery app "Easi" database
-- Easi is the largest Asian food delivery platform in NSW Australia.
-- Their purpose is making life easier by providing food and grocery delivery services.
-- User can download an app by Android and IOS APP to order food by fast way

drop table review;
drop table orders;
drop table deliverDriver;
drop table staff;
drop table customer;
drop table item;
drop table restaurant;



create table restaurant
	(   
		restaurantID char (20),
		name char (20),
		address text not null,
		phone char (10),

        	CONSTRAINT restaurant_pk PRIMARY KEY (restaurantID),
        	CONSTRAINT di_table_restaurant_phone CHECK (length(phone) = 10 and phone not like '%[^0-9]%')
	);

INSERT INTO restaurant VALUES('14506', 'Salvage', '5 Wilkes Ave Artarmon', '0488899866');
INSERT INTO restaurant VALUES('31279', 'AnViet', '370 Victoria Ave Chatswood', '0410620632');
INSERT INTO restaurant VALUES('13260', 'MyeongBBQ', '901-5 Railway Ave Chatswood', '0294154369');
INSERT INTO restaurant VALUES('17500', 'MakotoBento', '438 Victoria Ave Chatswood', '0294111863');
INSERT INTO restaurant VALUES('45526', 'After12', '80 Archer st Chatswood', '0449177168');
INSERT INTO restaurant VALUES('43729', 'GramCafe', 'level 3 Victoria Ave Chatswood', '0281821220');
INSERT INTO restaurant VALUES('12900', 'Gongcha', 'shop 65 427 Victoria Ave Chatswood', '0988495685');
INSERT INTO restaurant VALUES('32557', 'Teasquare', 'shop 224 Albert Ave Chatswood', '0411673220');
INSERT INTO restaurant VALUES('45300', 'Deli', '1 Anderson st Chatswood', '0218660330');
INSERT INTO restaurant VALUES('22560', 'LambCumin', 'shop 381 Anderson st', '0411108010');



create table item
	(
        	itemID char (5),
        	restaurantID char (50),
        	itemName char (20),
        	price numeric not null,
        
        	CONSTRAINT item_pk PRIMARY KEY (itemID),
        	CONSTRAINT item_fk FOREIGN KEY (restaurantID) REFERENCES restaurant (restaurantID)
	);

INSERT INTO item VALUES ('1a', '14506', 'Benedict', 18.8);
INSERT INTO item VALUES ('1b', '14506', 'Corn fritter', 17.8);
INSERT INTO item VALUES ('1c', '14506', 'Chicken burger', 16.8);
INSERT INTO item VALUES ('1d', '14506', 'Pumokin salad', 15);
INSERT INTO item VALUES ('2a', '31279', 'Beef pho', 15.9);
INSERT INTO item VALUES ('2b', '31279', 'Chicken noodle', 16.9);
INSERT INTO item VALUES ('2c', '31279', 'Pork noodle', 16.9);
INSERT INTO item VALUES ('2d', '31279', 'Pepper tofu', 16.9);
INSERT INTO item VALUES ('3a', '13260', 'Pork Cutlet', 20);
INSERT INTO item VALUES ('3b', '13260', 'Fishcake pot', 40);
INSERT INTO item VALUES ('3c', '13260', 'Soybean paste', 19);
INSERT INTO item VALUES ('3d', '13260', 'Fish Roe', 20);
INSERT INTO item VALUES ('4a', '17500', 'Pork Katsu Don', 13.5);
INSERT INTO item VALUES ('4b', '17500', 'Eel Don', 18);
INSERT INTO item VALUES ('4c', '17500', 'Pork Bento', 26.8);
INSERT INTO item VALUES ('4d', '17500', 'Salmon sushi', 12.8);
INSERT INTO item VALUES ('5a', '45526', 'Peach Tea', 6.5);
INSERT INTO item VALUES ('5b', '45526', 'Orange Tea', 6.5);
INSERT INTO item VALUES ('5c', '45526', 'Taro Latte', 8);
INSERT INTO item VALUES ('5d', '45526', 'Herbal Jelly', 7.5);
INSERT INTO item VALUES ('6a', '43729', 'Summer box', 36.5);
INSERT INTO item VALUES ('6b', '43729', 'Strwberry box', 32.5);
INSERT INTO item VALUES ('6c', '43729', 'Mango box', 37.5);
INSERT INTO item VALUES ('6d', '43729', 'Orginal box', 28.5);
INSERT INTO item VALUES ('7a', '12900', 'Milk tea', 7);
INSERT INTO item VALUES ('7b', '12900', 'Green Milk tea', 7);
INSERT INTO item VALUES ('7c', '12900', 'Plum Yoghurt', 8);
INSERT INTO item VALUES ('7d', '12900', 'Apple Green tea', 7);
INSERT INTO item VALUES ('8a', '32557', 'Pork Wonton', 19.5);
INSERT INTO item VALUES ('8b', '32557', 'Xiaolongbao', 12.5);
INSERT INTO item VALUES ('8c', '32557', 'Prawn dumplings', 10);
INSERT INTO item VALUES ('8d', '32557', 'Stewed beef', 7);
INSERT INTO item VALUES ('9a', '22560', 'lamb skewer', 11.5);
INSERT INTO item VALUES ('9b', '22560', 'Chicken skewer', 9.5);
INSERT INTO item VALUES ('9c', '22560', 'BBQ skewer', 18.5);
INSERT INTO item VALUES ('9d', '22560', 'Tofu skewer', 9.5);
INSERT INTO item VALUES ('10a', '45300', 'Roast Duck', 23);
INSERT INTO item VALUES ('10b', '45300', 'Pork Belly', 20);
INSERT INTO item VALUES ('10c', '45300', 'BBQ Pork', 18);
INSERT INTO item VALUES ('10d', '45300', 'Beef Brisket', 20);



create table customer
	(   
		customerID char (10),
		customerName text not null,
		mobile char (10),
		address text not null,
		email text, 
		

		CONSTRAINT customer_pk PRIMARY KEY (customerID),
		CONSTRAINT di_table_customer_email CHECK (email like '%@%.%'),
		CONSTRAINT di_table_customer_mobile CHECK (length(mobile) = 10 and mobile not like '%[^0-9]%')
	);

INSERT INTO customer VALUES ('1', 'Hua', '0481212608', 'U 2201, 1 post office lane, Chatswood', '12491015@gmail.com');
INSERT INTO customer VALUES('2', 'zoe', '0450538145', 'U 1204, 23 hudson st, lewisham', 'zoeeeeejzx@gmail.com');
INSERT INTO customer VALUES('3', 'mop', '0459830656', 'U 605, 428 victoria ave, Chatswood', 'lyj123456@gmail.com');
INSERT INTO customer VALUES('4', 'sonya', '0470780538', '24 walker st, Rhodes', 'ruilinl@gmail.com');
INSERT INTO customer VALUES('5', 'kevin', '0425870519', 'shop 66, Podium level 3, Chatswood', 'firstworldoffical@gmail.com');
INSERT INTO customer VALUES('6', 'Alex', '0481876220', '1 Victoria ave, Chatswood', 'alex0789@hotmail.com');
INSERT INTO customer VALUES('7', 'Taylor', '0481839220', '18 Thomas st, Chatswood', 'taylor0760@gmail.com');
INSERT INTO customer VALUES('8', 'Amy', '0438712560', 'U2305 23 Victoria st, Chatswood', 'anyling@gmail.com');
INSERT INTO customer VALUES('9', 'David', '0481820220', '161 Archer st Chatswood', 'davidwang@gmail.com');
INSERT INTO customer VALUES('10', 'June', '0451366788', '799 Pacific Hwy Chatswood', 'mayjune@qq.com');



create table staff
	(
		staffID char (10),
		name char (20),
		role char (20),
		supervisor char (10),
		restaurantID char (20),


		CONSTRAINT staff_pk PRIMARY KEY (staffID),
		CONSTRAINT di_table_staff_role CHECK (role in (
            		'Waiter',
           		'Chef',
            		'Cashier',
            		'Cleaner',
            		'Operator',
            		'Human Manager',
            		'Food safety Manager'
		)),
		CONSTRAINT staff_fk_restaurantID FOREIGN KEY (restaurantID) REFERENCES restaurant (restaurantID)
	);

INSERT INTO staff VALUES ('00', 'Zoe', 'Operator', null, '32557');
INSERT INTO staff VALUES ('000', 'Becky', 'Human Manager', '32557');
INSERT INTO staff VALUES ('01', 'Lily', 'Food safety Manager', '00', '32557');
INSERT INTO staff VALUES ('02', 'Susan', 'Waiter', '01', '32557');
INSERT INTO staff VALUES ('03', 'Amy', 'Waiter', '08', '43729');
INSERT INTO staff VALUES ('04', 'Lisa', 'Cashier', '08', '43729');
INSERT INTO staff VALUES ('05', 'Kevin', 'Chef', '01', '32557');
INSERT INTO staff VALUES ('06', 'Kim', 'Cashier','01', '32557');
INSERT INTO staff VALUES ('07', 'Young', 'Cleaner', '08', '43729');
INSERT INTO staff VALUES ('08', 'Charlie', 'Human Manager', '09', '43729');
INSERT INTO staff VALUES ('09', 'Oyzh', 'Operator', null, '43729');
INSERT INTO staff VALUES ('10', 'Joe', 'Food safety Manager', '09', '43729');



create table deliverDriver
	(
		driverID char (10),
		driverName char (10),
		mobile char (10),
        
        	CONSTRAINT deliverDriver_pk PRIMARY KEY (driverID)
	);

INSERT INTO deliverDriver VALUES ('01a', 'wu', '0487220559');
INSERT INTO deliverDriver VALUES ('02b', 'Cassie', '0450537688');
INSERT INTO deliverDriver VALUES ('03c', 'John', '0450512680');
INSERT INTO deliverDriver VALUES ('04a', 'xindong', '0420360790');
INSERT INTO deliverDriver VALUES ('05b', 'Lee', '0250518733');
INSERT INTO deliverDriver VALUES ('06c', 'Wangtg', '0450512899');
INSERT INTO deliverDriver VALUES ('07d', 'Yuliu', '0459598422');
INSERT INTO deliverDriver VALUES ('08a', 'Fong', '0481820133');
INSERT INTO deliverDriver VALUES ('09b', 'Mah', '0481290755');
INSERT INTO deliverDriver VALUES ('10c', 'Liu', '0450531713');
INSERT INTO deliverDriver VALUES ('11a', 'Ann', '0450532188');


create table orders
	(
		ordersID char (10),
		restaurantID char (50),
		customerID char (10), 
		driverID char (5),
		discount numeric not null,

		CONSTRAINT orders_pk PRIMARY KEY (ordersID),
		CONSTRAINT orders_fk_restaurantID FOREIGN KEY (restaurantID) REFERENCES restaurant (restaurantID),
		CONSTRAINT orders_fk_customerID FOREIGN KEY (customerID) REFERENCES customer (customerID),
		CONSTRAINT orders_fk_driverID FOREIGN KEY (driverID) REFERENCES deliverDriver (driverID) 
	); 


INSERT INTO orders VALUES('27893', '14506', '1', '01a', 0);
INSERT INTO orders VALUES('78654', '31279', '2', '02b', 10);
INSERT INTO orders VALUES('50288', '13260', '3', '03c', 5); 
INSERT INTO orders VALUES('22567', '17500', '4', '04a', 0);
INSERT INTO orders VALUES('78210', '14506', '5', '05b', 5);
INSERT INTO orders VALUES('26780', '45526', '6', '06c', 0);
INSERT INTO orders VALUES('14570', '43729', '7', '07d', 0);
INSERT INTO orders VALUES('44678', '12900', '8', '08a', 10); 
INSERT INTO orders VALUES('20800', '32557', '9', '09b', 10);
INSERT INTO orders VALUES('52019', '12900', '8', '10c', 10);
INSERT INTO orders VALUES('77499', '14506', '10', '01a', 5);



create table review
	(
		restaurantID char (50),
		customerID char (10),
		rate numeric not null,

		CONSTRAINT di_table_review_rate CHECK ((rate >= 1) and (rate <= 5)),
		CONSTRAINT review_pk PRIMARY KEY (restaurantID, customerID),
		CONSTRAINT review_fk1 FOREIGN KEY (restaurantID) REFERENCES restaurant (restaurantID)
			ON DELETE RESTRICT
			ON UPDATE RESTRICT,
		CONSTRAINT review_fk2 FOREIGN KEY (customerID) REFERENCES customer (customerID)
			ON DELETE RESTRICT
			ON UPDATE RESTRICT

    );
INSERT INTO review VALUES('14506', '1', 5);
INSERT INTO review VALUES('31279', '2', 3.5);
INSERT INTO review VALUES('13260', '3', 4);
INSERT INTO review VALUES('17500', '4', 5);
INSERT INTO review VALUES('45526', '6', 5);
INSERT INTO review VALUES('43729', '7', 4.5);
INSERT INTO review VALUES('12900', '8', 5);
INSERT INTO review VALUES('32557', '9', 4.5);
INSERT INTO review VALUES('22560', '3', 4.5);
INSERT INTO review VALUES('45300', '7', 5);
INSERT INTO review VALUES('17500', '3', 5);
INSERT INTO review VALUES('17500', '2', 4.5);
INSERT INTO review VALUES('17500', '1', 5);
INSERT INTO review VALUES('12900', '2', 3);
INSERT INTO review VALUES('32557', '1', 4);
INSERT INTO review VALUES('22560', '6', 2.5);
INSERT INTO review VALUES('32557', '5', 3.5);
