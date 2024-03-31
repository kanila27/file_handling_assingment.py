// Student class
class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printStudentInfo() {
    print('Student Name: $name');
    print('Student Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printTeacherInfo() {
    print('Teacher Name: $name');
    print('Teacher Age: $age');
    print('Subject: $subject');
  }
}

// Main class
class School {
  void createObjectsAndPrintInfo() {
    // Create student object
    var student = Student('John', 15, 10);
    // Create teacher object
    var teacher = Teacher('Ms. Smith', 35, 'Mathematics');

    // Print student information
    print('Student Information:');
    student.printStudent
