// Inheritance

//Task 3.2
class Animal {
    void makeSound() {
        print("Some animal sound");
    }
}

class Dog extends Animal {
@override
    void makeSound() {
        print("Woof!");
    }
}

class Cat extends Animal {
@override
    void makeSound() {
        print("Meow!");
    }
}

// Task 3.3
class Shape {
    String color;
    Shape(this.color);
}

class Circle extends Shape {
    double radius;

    Circle(this.radius, String color) {
        this.color = color;
    }
}

class Square extends Shape {
    double sideLength;

    Square(this.sideLength, String color) {
        this.color = color;
    }
}

//Task 3.4
class Employee{
    String name;
    double baseSalary;
    Employee(this.name, this.baseSalary);
    
    double calculateSalary(){
      return baseSalary;
    }
}

class Manager extends Employee{
    double bonus;
    Manager(String name, double baseSalary, this.bonus) : super(name, baseSalary);

    @override
    double calculateSalary(){
      return baseSalary + bonus;
    }
}

// Task 3.5
class LibraryItem {
    String title;
    int id;

    LibraryItem(this.title, this.id);
    void getDetails(){
      print('Item: $title, ID: $id');
    }
}

class Book extends LibraryItem {
    String author;

    Book(String title, int id, this.author) : super(title, id);
    @override
    void getDetails(){
      print('Book: $title, Author: $author, ID: $id');
    }
}

class DVD extends LibraryItem {
    String director;

    DVD(String title, int id, this.director) : super(title, id);
    @override
    void getDetails(){
      print('DVD: $title, Director: $director, ID: $id');
    }
}

void main() {
    // Task 3.2
    Animal myDog = Dog();
    Animal myCat = Cat();

    myDog.makeSound(); 
    myCat.makeSound();

    // Task 3.3
    Circle circle = Circle(1.2, "Red");
    Square square = Square(7.7, "Blue"); 

    print("Circle color: ${circle.color}");
    print("Square color: ${square.color}");

    // Task 3.4
    Employee emp = Employee("simple_worker", 50000);
    Manager mgr = Manager("manager", 60000, 10000);

    print("Employee salary: ${emp.calculateSalary()}");
    print("Manager salary: ${mgr.calculateSalary()}");

    // Task 3.5
    Book book = Book("2025", 1, "aaaaa, 7 chapters of exercises");
    DVD dvd = DVD("Inception", 2, "Christopher Nolan");

    book.getDetails();
    dvd.getDetails();
}
