## Hartsfield-Jackson International Airport Database Design

Hartsfield-Jackson International Airport, perhaps better known as **“ATL”** for its IATA airport code, has been the busiest airport in the world since 1998. Located in Atlanta, Georgia, in the United States, ATL served 93.7 million passengers in 2022. Maybe you were one of them!

### Task Description

You’ve just been hired to help ATL redesign their database system. Your task is to create a SQLite database for ATL from scratch by writing a set of `CREATE TABLE` statements in a file named `schema.sql`, stored in a folder called `atl`. The implementation details are up to you, but you should ensure that your database meets ATL’s requirements and can represent the sample data provided.

---

### Database Requirements

#### **Passengers**
- **Fields**: First name, last name, and age.
- **Purpose**: To store essential information about passengers.

#### **Check-Ins**
- **Fields**:
  - Exact date and time of check-in.
  - Flight for which the passenger is checking in.
- **Purpose**: To maintain a log of passenger check-ins.

#### **Airlines**
- **Fields**:
  - Name of the airline.
  - Concourse (the section of the airport where the airline operates). ATL has 7 concourses: A, B, C, D, E, F, and T.
- **Purpose**: To track information about domestic and international airlines operating at ATL.

#### **Flights**
- **Fields**:
  - Flight number (e.g., “900”). Flight numbers may be reused.
  - Airline operating the flight.
  - Departure airport code (e.g., “ATL”).
  - Arrival airport code (e.g., “BOS”).
  - Expected departure date and time.
  - Expected arrival date and time.
- **Purpose**: To provide detailed information about the flights served by ATL.

---

### Sample Data Representation

Your database should be able to represent the following:

1. **Passenger**: Amelia Earhart, 39 years old.
2. **Airline**: Delta, operating out of concourses A, B, C, D, and T.
3. **Flight**: Delta Flight 300, departing from ATL on August 3rd, 2023, at 6:46 PM and arriving at BOS on August 3rd, 2023, at 9:09 PM.
4. **Check-In**: Amelia Earhart checked in for Delta Flight 300 on August 3rd, 2023, at 3:03 PM.
