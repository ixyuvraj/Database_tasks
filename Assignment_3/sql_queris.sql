select * from Trips
select * from vehicles
select * from Drivers


--Retrieve all trips along with the assigned vehicle and driver. 
select t.* , v.licensePlate, d.name, d.licenseNo
from Trips t
join vehicles v 
on
	t.vehicleId = v.vehicleId
join Drivers d
on
	t.driverId = d.driverId



--Show all shipments assigned to a specific trip. 
select * from Trips
select * from Shipments
select * from tripShipments

select ts.tripId, s.*
from tripShipments ts
join Shipments s
on
	ts.shipmentId = s.shipmentId
where ts.tripId = 1



--List all routes along with their ordered stops. 
select * from Routees
select * from RouteStops


select r.routeId, s.* 
from Routees r 
join RouteStops s
on
	r.routeId = s.routeId
order by r.routeId, s.sequenceOrder



--List all vehicles currently under maintenance. 

select * from vehicles
select * from VehicleMaintainence

select v.*, m.startDate
from vehicles v
join VehicleMaintainence m
on
	v.vehicleId = m.vehicleId
where m.endDate is null;



--List all drivers with total trips completed and total distance covered. 
select * from Drivers
select * from Trips

select d.driverId, d.name, d.licenseNo, SUM(t.totalDistance) as total_distance
from Trips t
join Drivers d
on
	t.driverId = d.driverId
where t.status = 'completed'
group by d.driverId, d.name, d.licenseNo