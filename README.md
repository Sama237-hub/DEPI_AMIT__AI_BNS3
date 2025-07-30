Purpose and Scope
This document provides an overview of the Student Course Management System, a Python-based educational record management application that provides a command-line interface for managing student enrollments, course administration, and grade tracking. The system implements a three-tier architecture with clean separation between user interface, business logic, and data models.

For detailed information about specific system components, see Core Package for business logic documentation, Model Package for data model specifications, and User Interface for CLI implementation details.

System Description
The Student Course Management System is an in-memory application designed for educational institutions to manage student records, course catalogs, and enrollment relationships. The system provides a menu-driven command-line interface that allows administrators to perform common academic management tasks including student registration, course creation, enrollment management, and grade recording.

The application follows object-oriented design principles with clear separation of concerns across three primary layers: a CLI presentation layer, a business logic orchestration layer, and a data model layer that defines core entities and their relationships.

Sources: 
main.py
1-115
 
__init__.py
1-3

System Architecture
The following diagram illustrates the high-level architecture showing the relationship between the presentation layer, business logic, and data model components:

System Architecture Overview

Package Interfaces

Data Model Layer

Business Logic Layer

Presentation Layer

main.py
Command Line Interface

SystemManager
core/system_manager.py

Student Class
model/student.py

Course Class
model/course.py

core/init.py

model/init.py

init.py

Sources: 
main.py
1-115
 
__init__.py
1-3

Core System Components
This diagram maps the primary system operations to their corresponding code implementations, showing how user interactions flow through specific functions and classes:

Component Mapping to Code Entities

SystemManager Methods

CLI Functions

show_menu()

add_student_1()

remove_student()

add_course()

remove_course()

search_courses()

record_grade()

get_all_students()

get_all_courses()

enroll_course()

core()

add_student()

remove_student()

add_course()

remove_course()

search_courses()

record_grade()

get_all_students()

get_all_courses()

enroll_course()

Sources: 
main.py
4-77
 
main.py
80-114

Key System Features
The system provides the following core functionality through its CLI interface:

Feature	CLI Function	Description
Student Management	add_student_1(), remove_student()	Add new students and remove existing ones
Course Management	add_course(), remove_course()	Create courses and remove them from catalog
Enrollment	enroll_course()	Register students for specific courses
Grade Recording	record_grade()	Store grades for student-course combinations
Search Operations	search_courses()	Find courses by name matching
Data Retrieval	get_all_students(), get_all_courses()	Display complete student and course listings
The main application entry point is the core() function which initializes a SystemManager instance and provides a continuous menu loop for user interaction. The system uses in-memory storage with automatic ID generation for both students and courses.

Sources: 
main.py
16-77
 
main.py
80-114

Data Flow Pattern
User interactions follow a consistent pattern where the CLI layer captures input, delegates operations to the SystemManager, which then coordinates with the appropriate model classes (Student and Course) to maintain data consistency and relationships. All operations are performed in memory with immediate feedback provided through the command-line interface.

The system maintains bidirectional relationships between students and courses to support enrollment tracking and ensures referential integrity through the central SystemManager orchestration layer.

Sources: 
main.py
1-2
 
main.py
80-81

