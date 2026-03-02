


alter table orders
add totalWeight decimal(10, 2) default 0;

CREATE TABLE product (
    productId INT PRIMARY KEY,
    orderId INT,
    name VARCHAR(50),
    weight DECIMAL(10,2),   -- weight per unit
    quantity INT,
    FOREIGN KEY (orderId) REFERENCES Orders(orderId)
);

select * from Customers

INSERT INTO Customers (customerId, name, phoneNo, address) VALUES
(1, 'Yuvraj Sharma', 9985925208, 'Hyderabad'),
(2, 'Rishab Mehta', 9876543210, 'Bangalore'),
(3, 'Anita Verma', 9123456780, 'Jaipur'),
(4, 'Rahul Singh', 9012345678, 'Delhi'),
(5, 'Priya Nair', 8899776655, 'Chennai'),
(6, 'Arjun Rao', 9345678901, 'Mumbai'),
(7, 'Sneha Kapoor', 8765432109, 'Pune');


select * from Orders
INSERT INTO Orders (orderId, customerId, orderDate, status, totalCost, totalWeight) VALUES
(101, 1, '2026-02-01', 'Delivered', 15000, 120.50),
(102, 2, '2026-02-03', 'Shipped', 22000, 180.00),
(103, 3, '2026-02-05', 'Pending', 8000, 75.25),
(104, 4, '2026-02-07', 'Cancelled', 17500, 140.00),
(105, 5, '2026-02-08', 'Delivered', 30000, 250.75),
(106, 6, '2026-02-10', 'In Transit', 19500, 160.40),
(107, 7, '2026-02-12', 'Confirmed', 9500, 60.00);


select * from product

INSERT INTO Product (productId, orderId, name, weight, quantity) VALUES
(1, 101, 'LED TV', 15.50, 2),
(2, 101, 'Sound Bar', 5.00, 3),
(3, 102, 'Refrigerator', 60.00, 2),
(4, 102, 'Microwave Oven', 25.00, 1),
(5, 103, 'Office Chair', 12.50, 4),
(6, 104, 'Washing Machine', 70.00, 2),
(7, 105, 'Wooden Table', 40.00, 3),
(8, 105, 'Dining Chairs', 8.25, 6),
(9, 106, 'Laptop', 2.50, 5),
(10, 106, 'Printer', 9.20, 3),
(11, 107, 'Books Carton', 15.00, 4);

select * from Shipments

INSERT INTO Shipments (shipmentId, orderId, currentLocation, status) VALUES
(1, 101, 'Hyderabad Hub', 'Delivered'),
(2, 102, 'Bangalore Warehouse', 'In Transit'),
(3, 103, 'Jaipur Dispatch Center', 'Pending'),
(4, 105, 'Chennai Hub', 'Delivered'),
(5, 106, 'Mumbai Highway Checkpoint', 'In Transit'),
(6, 107, 'Pune Sorting Facility', 'Ready for Pickup');


select * from vehicles

INSERT INTO Vehicles (vehicleId, vehicleCapacity, licensePlate) VALUES
(1, 500.00, 'TS09AB1234'),
(2, 300.00, 'KA05CD5678'),
(3, 700.00, 'DL01EF9012');


INSERT INTO VehicleMaintainence (maintainenceId, vehicleId, startDate, endDate) VALUES
(1, 2, '2026-02-15', '2026-02-20'),
(2, 3, '2026-03-01', NULL);



INSERT INTO Drivers (driverId, name, licenseNo, phoneNo) VALUES
(1, 'Mahesh Kumar', 'DL987654321', 9876001234),
(2, 'Suresh Yadav', 'KA123456789', 9123409876),
(3, 'Imran Shaikh', 'MH112233445', 9988776655);



INSERT INTO Routees (routeId, origin, destination, distance, estimatedTravleTime) VALUES
(1, 'Hyderabad', 'Bangalore', 570, '08:30:00'),
(2, 'Delhi', 'Jaipur', 280, '05:00:00'),
(3, 'Mumbai', 'Chennai', 1030, '15:45:00');



INSERT INTO RouteStops (stopId, routeId, location, arrivalTime, departureTime, sequenceOrder) VALUES
(1, 1, 'Kurnool', '10:00:00', '10:30:00', 1),
(2, 1, 'Anantapur', '13:00:00', '13:20:00', 2),

(3, 2, 'Gurgaon', '09:30:00', '09:45:00', 1),
(4, 2, 'Alwar', '11:00:00', '11:15:00', 2),

(5, 3, 'Pune', '08:00:00', '08:20:00', 1),
(6, 3, 'Bangalore', '18:00:00', '18:30:00', 2);



INSERT INTO Trips (tripId, vehicleId, driverId, routeId, tripDate, status, totalDistance) VALUES
(1, 1, 1, 1, '2026-02-02', 'Completed', 570),
(2, 2, 2, 2, '2026-02-06', 'Completed', 280),
(3, 3, 3, 3, '2026-02-11', 'In Progress', 1030);


INSERT INTO TripShipments (tripId, shipmentId) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(3, 5);


INSERT INTO FuelRecords (fuelId, tripId, fuelAmount, fuelCost, fuelDate) VALUES
(1, 1, 120.50, 11000.00, '2026-02-02'),
(2, 2, 75.00, 6800.00, '2026-02-06'),
(3, 3, 210.75, 19500.00, '2026-02-11');

