create table Customers (
    customer_id int primary key,
    customer_name varchar(100) not null,
    email varchar(100) not null unique,
    city varchar(100) not null
);


create table Suppliers (
    supplier_id int primary key,
    supplier_name varchar(100) not null,
    email varchar(100) unique,
    phone bigint unique,
    country varchar(100) not null
);


create table Products (
    product_id int primary key,
    product_name varchar(100) not null,
    price decimal(10,2) not null,
    supplier_id int not null,
    foreign key (supplier_id) references Suppliers(supplier_id)
);


create table Orders (
    order_id int primary key,
    order_number bigint not null unique,
    customer_id int not null,
    order_date date not null,
    amount decimal(10,2) not null,
    status varchar(20) not null,
    foreign key (customer_id) references Customers(customer_id)
);


create table OrderItems (
    order_id int not null,
    product_id int not null,
    quantity int not null,
    primary key (order_id, product_id),
    foreign key (order_id) references Orders(order_id),
    foreign key (product_id) references Products(product_id)
);


create table Professors (
    professor_id int primary key,
    professor_name varchar(100) not null,
    department varchar(100) not null,
    email varchar(100) not null unique
);


create table Courses (
    course_id int primary key,
    course_name varchar(100) not null unique,
    credits int not null,
    professor_id int not null,
    foreign key (professor_id) references Professors(professor_id)
);



create table Students (
    student_id int primary key,
    student_name varchar(100) not null,
    student_department varchar(100) not null
);


create table StudentCourses (
    student_id int not null,
    course_id int not null,
    primary key (student_id, course_id),
    foreign key (student_id) references Students(student_id),
    foreign key (course_id) references Courses(course_id)
);


create table Departments (
    department_id int primary key,
    department_name varchar(100) not null unique,
    location varchar(100)
);


create table Employees (
    employee_id int primary key,
    employee_name varchar(100) not null,
    department_id int not null,
    salary decimal(10,2) not null,
    manager_id int,
    foreign key (department_id) references Departments(department_id),
    foreign key (manager_id) references Employees(employee_id)
);


insert into Customers values
(1, 'Sahith', 'sahith@gmail.com', 'Hyderabad'),
(2, 'Sai', 'sai@gmail.com', 'Bangalore'),
(3, 'Preetam', 'preetam@gmail.com', 'Pune'),
(4, 'Rishi', 'rishi@gmail.com', 'Mumbai'),
(5, 'Jaideep', 'jaideep@gmail.com', 'Delhi'),
(6, 'Sathwik', 'sathwik@gmail.com', 'Chennai'),
(7, 'Prudhvi', 'prudhvi@gmail.com', 'Hyderabad'),
(8, 'Amogh', 'amogh@gmail.com', 'Bangalore'),
(9, 'Shankar', 'shankar@gmail.com', 'Kolkata');



insert into Suppliers values
(1, 'TechSource Ltd', 'support@techsource.com', 9876543210, 'India'),
(2, 'Global Electronics', 'info@globalelec.com', 9876501234, 'USA'),
(3, 'CompuWorld', 'sales@compuworld.com', 9998887776, 'India'),
(4, 'TechGear International', 'service@techgear.com', 9988776655, 'Germany'),
(5, 'Digital Hub', 'contact@digitalhub.com', 9877001122, 'Australia');


insert into Products values
(1, 'Laptop', 65000.00, 1),
(2, 'Mouse', 500.00, 2),
(3, 'Keyboard', 800.00, 3),
(4, 'Monitor', 7000.00, 2),
(5, 'Headphones', 1200.00, 4),
(6, 'USB Cable', 150.00, 5),
(7, 'Webcam', 2500.00, 3);


insert into Orders values
(1, 101, 1, '2026-01-01', 5000.00, 'completed'),
(2, 102, 2, '2026-01-02', 6000.00, 'completed'),
(3, 103, 1, '2026-01-03', 4500.00, 'completed'),
(4, 104, 1, '2026-01-04', 3000.00, 'completed'),
(5, 105, 3, '2026-01-05', 2500.00, 'completed'),
(6, 106, 1, '2026-01-06', 7000.00, 'completed'),
(7, 107, 4, '2026-01-07', 4000.00, 'completed'),
(8, 108, 5, '2026-01-08', 3500.00, 'completed'),
(9, 109, 7, '2026-01-09', 2000.00, 'cancelled');



insert into OrderItems values
(1, 2, 3),
(1, 3, 1),
(2, 1, 1),
(3, 4, 2),
(4, 5, 2),
(5, 3, 1),
(6, 1, 1),
(7, 2, 1),
(8, 4, 1),
(9, 7, 1);


insert into Departments values
(1, 'Human Resources', 'Mumbai'),
(2, 'Finance', 'Delhi'),
(3, 'Engineering', 'Bangalore'),
(4, 'Marketing', 'Pune'),
(5, 'Sales', 'Hyderabad');


insert into Employees values
(101, 'Arjun', 3, 75000.00, null),
(102, 'Kiran', 3, 56000.00, 101),
(103, 'Meena', 2, 69000.00, null),
(104, 'Ravi', 2, 52000.00, 103),
(105, 'Suresh', 4, 61000.00, null),
(106, 'Pradeep', 4, 45000.00, 105),
(107, 'Ananya', 1, 58000.00, null),
(108, 'Disha', 1, 43000.00, 107),
(109, 'Tarun', 5, 67000.00, null),
(110, 'Jai', 5, 42000.00, 109);



insert into Professors values
(1, 'Dr. Suresh Iyer', 'Computer Science', 'suresh.iyer@univ.edu'),
(2, 'Dr. Neha Kapoor', 'Mathematics', 'neha.kapoor@univ.edu'),
(3, 'Dr. Rahul Menon', 'Physics', 'rahul.menon@univ.edu');



insert into Courses values
(101, 'Data Structures', 4, 1),
(102, 'Database Systems', 4, 1),
(103, 'Linear Algebra', 3, 2),
(104, 'Quantum Mechanics', 4, 3);



insert into Students values
(1, 'Yuvraj Sharma', 'Computer Science'),
(2, 'Sneha Kulkarni', 'Computer Science'),
(3, 'Rohit Verma', 'Mathematics'),
(4, 'Pooja Nair', 'Physics');

insert into StudentCourses values
(1, 101),
(1, 102),
(2, 101),
(3, 103);



select * from Customers
select * from Orders
select * from OrderItems
select * from Products
select * from Suppliers

select * from Employees
select * from Departments

select * from Students
select * from Courses
select * from StudentCourses
select * from Professors
