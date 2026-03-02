create table Customers (
	customerId int primary key,
	name varchar(20) not null,
	phoneNo bigint not null,
	address varchar(100)
)

create table Orders(
	orderId int primary key,
	customerId int,
	orderDate date,
	status varchar,
	totalCost int,
	foreign key (customerId) references Customers(customerId)
)


create table Products (
	productId int primary key,
	name varchar(30),
	description varchar(100),
	dimensions varchar(20),
	weight int,
	orderId int
	foreign key(orderId) references Orders(orderId)
)


create table Shipments (
	shipmentId int primary key,
	orderId int,
	currentLocation varchar,
	status varchar

	foreign key(orderId) references Orders(orderId)
)



create table vehicles(
	vehicleId int primary key,
	vehicleCapacity int,
	licensePlate varchar(10)
)


create table VehicleMaintainence (
	maintainenceId int primary key,
	vehicleId int,
	startDate date,
	endDate date
	foreign key(vehicleId) references Vehicles(vehicleId)
)


create table Drivers(
	driverId int primary key,
	name varchar(30),
	licenseNo int,
	phoneNo bigint
)



create table Routees (
	routeId int primary key,
	origin varchar,
	destination varchar,
	distance int,
	estimatedTravleTime time
)


create table RouteStops (
	stopId int primary key,
	routeId int,
	location varchar,
	arrivalTime time,
	departureTime time,
	sequenceOrder int
)

create table Trips(
	tripId int primary key,
	vehicleId int,
	driverId int,
	routeId int,
	tripDate date,
	status varchar,
	totalDistance int,
	foreign key(vehicleId) references Vehicles(vehicleId),
	foreign key(driverId) references Drivers(driverId),
	foreign key(routeId) references Routees(routeId)
)

create table tripShipments (
	tripId int not null,
	shipmentId int not null,

	primary key(tripId, shipmentId),
	FOREIGN KEY (tripId) REFERENCES trips(tripId)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (shipmentId) REFERENCES shipments(shipmentId)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)


create table FuelRecords (
	fuelId int primary key,
	tripId int,
	fuelAmount decimal(10, 2),
	fuelCost decimal(10, 2),
	fuelDate date,
	foreign key(tripId) references Trips(tripId)
)