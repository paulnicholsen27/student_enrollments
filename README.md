## Deliverables

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb` from the command line. You'll be able to test out the methods that you write here. Take a look at that file to see how you can pre-define variables and create object instances, rather than manually doing it in every single console session.

### Basic Class Methods and Properties

Task:  Build out the methods and relationships for a `Student` model, a `Course` model, and an `Enrollment` model.

- A `Student` has a name
- A `Course` has a name and a department
- A `Student` can take many `Course`s.
- A `Course` can have many `Student`s
- An `Enrollment` belongs to a `Student`
- An `Enrollment` belongs to a `Course`
- A `Student` can take many `Enrollment`s
- A `Course` can have many `Enrollments`s

#### Build the following methods on the `Student` class

- `Student.all`
  - should return **all** of the `Student` instances
- `Student#name`
  - returns the name of the given `Student`
- `Student.find_by_name(name)`
  - given a string of a name, returns the **first tourist** whose  name matches
- `Student#enrollments`
  - returns an **array** of all the enrollments taken by the given `Student`
- `Student#classes`
  - returns an **array** of all the classes for the given `Student`
- `Student#take_course(course)` should create a new enrollment for that student to the given course

#### Build out the following methods on the `Course` class

- `Course.all`
  - returns an **array** of all courses
- `Course.find_by_department(department)`
  - returns an **array** of all courses in that department
- `Course#students`
  - returns an **array** of all the students enrolled in that course

#### Build out the following methods on the `Enrollment` class

- `Enrollment.all`
  - returns an array of all enrollments
- `Enrollment#student`
  - returns the student of the enrollment
- `Enrollment#course`
  - returns the course of the enrollment
