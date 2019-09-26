create schema TaxBill

create table TaxBill.LoginDetails
(
	id int primary key Identity,
	username varchar(25) not null,
	password varchar(25) not null
)

insert into TaxBill.LoginDetails values('admin', 'admin')

create table TaxBill.CustomerDetails
(
	customerId int primary key Identity(1000,1), 
	customerName varchar(25) not null,
	mobileNumber varchar(10) not null,
	houseNo varchar(20) not null, 
	houseType varchar(20) not null, 
	builtInArea varchar(20) not null,
	areaInSqfts int not null,
	area varchar(20) not null,
	Location varchar(20) not null,
	pincode int not null
)

select * from TaxBill.CustomerDetails

select * from TaxBill.Bill

select * from TaxBill.Bill

create table TaxBill.Bill
(
	billId int primary key identity(10000, 1),
	customerId int foreign key references TaxBill.CustomerDetails(customerId),
	billDate date not null,
	billAmount int not null,
	billDueDate date not null,
	status varchar(10) not null,
	fine int,
)

create table TaxBill.cardDetails
(
	cardId int primary key Identity(100000,1),
	customerId int foreign key references TaxBill.CustomerDetails(customerId),
	cardNo varchar(25) not null,
	cardType varchar(20) not null,
)

create table TaxBill.Reports
(
	transactionId int primary key Identity(1000000,1),
	customerId int foreign key references TaxBill.CustomerDetails(customerId),
	billNo int foreign key references TaxBill.Bill(billId)
)


create table TaxBill.Prices
(
	id int primary key Identity,
	area varchar(20) not null,
	pricepersqft int not null,
	houseType varchar(20) not null, 
	builtInArea varchar(20) not null,
)

delete from TaxBill.Prices
insert into TaxBill.Prices values('Thane', 10, 'Apartment', 'urban')
insert into TaxBill.Prices values('Thane', 10, 'Apartment', 'rural')
insert into TaxBill.Prices values('Thane', 10, 'Independent', 'urban')
insert into TaxBill.Prices values('Thane', 20, 'Independent', 'rural')

insert into TaxBill.Prices values('Airoli', 30, 'Apartment', 'urban')
insert into TaxBill.Prices values('Airoli', 20, 'Apartment', 'rural')
insert into TaxBill.Prices values('Airoli', 40, 'Independent', 'urban')
insert into TaxBill.Prices values('Airoli', 30, 'Independent', 'rural')
