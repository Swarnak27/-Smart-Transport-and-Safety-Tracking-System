# 🚌 Smart Transport and Safety Tracking System 

## Overview

This project simulates a **Smart Transport and Safety Tracking System** using **MySQL**. It focuses on monitoring and analyzing transportation data for **students, employees, or public passengers**, ensuring **safe, timely, and efficient** transport operations.

---

## Project Objective

To develop a smart transport tracking system that collects and analyzes key data such as:

- Bus routes, boarding logs, GPS tracking
- Pickup/drop confirmation
- Overcrowding detection
- Missed pickups or safety incidents
- Driver and supervisor assignments

---

## SQL Concepts Covered

This project demonstrates core to advanced SQL, including:

- ✅ `WHERE`, `IN`, `BETWEEN`, `LIKE` – filtering
- ✅ `ORDER BY`, `LIMIT`, `OFFSET` – sorting and pagination
- ✅ `COUNT()`, `AVG()`, `SUM()`, `MIN()`, `MAX()` – aggregate functions
- ✅ `GROUP BY`, `HAVING` – grouped analysis
- ✅ `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN` – relational queries
- ✅ Subqueries – both correlated and non-correlated
- ✅ Set operators – `UNION`, `INTERSECT`, `EXCEPT`

---

## Database Schema

The project includes the following tables:

| Table Name         | Description                               |
|--------------------|-------------------------------------------|
| `Buses`            | Stores bus info and capacity              |
| `Routes`           | Start, end, and expected route duration   |
| `Students`         | Student info and stop location            |
| `Drivers`          | Driver details                            |
| `Supervisors`      | Assigned staff for safety                 |
| `Bus_Assignments`  | Bus + Driver + Supervisor assignments     |
| `Boarding_Log`     | Tracks student boarding and exits         |
| `GPS_Tracking`     | Real-time bus speed and GPS data          |
| `Incidents`        | Safety-related logs and delay reports     |

---

## 📂 Project Structure
- create_tables.sql --> Include all table creation scripts
- insert_data.sql  --> insert statements for each table
- queries.sql   --> Include all  SQL queries worked on

