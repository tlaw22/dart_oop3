void main(List<String> arguments) {
// Teacher Class
  Teacher teach1 = Teacher();
  teach1.name = "Wendy";
  teach1.surname = "Wonkers";
  teach1.branch = "Math";
  print("Teacher 1: ${teach1.name}, ${teach1.surname}, ${teach1.branch}");

  teach1.giveInfo(); // displays the function override
// Student class
  Student stu1 = Student();
  stu1.name = "John";
  stu1.surname = "Dillenger";
  stu1.grade = 89;
  stu1.giveGrade();
  print("Student 1: ${stu1.name}, ${stu1.surname}, ${stu1.grade}");
  print("====================");
  // Animal Class

  Animal animal1 = Animal();
  Animal mouse1 = new Mouse();
  Animal cat1 = Cat();  // upcasting

  
  void pol(Animal animal) {
    animal.giveInfo();
  }
  // print out the givinfo for each class
  pol(animal1);
  pol(mouse1);
  pol(cat1); // latebinding
}

class Person {
  String name = "";
  String surname = "";
  void giveInfo() {
    print("Perason: $name $surname");
  }
}

class Teacher extends Person {
  String branch = "";
  @override
  void giveInfo() {
    print("Teacher at school");
  }
}

class Student extends Person {
  int? grade;

  void giveGrade() {
    print("Student Grade: $grade");
  }
}

class Animal {
  void giveInfo() {
    print("This is a Animal");
  }
}

class Mouse extends Animal {
  @override
  void giveInfo() {
    print("This is a Mouse");
  }
}

class Cat extends Animal {
  @override
  void giveInfo() {
    print("This is a Cat");
  }
}
