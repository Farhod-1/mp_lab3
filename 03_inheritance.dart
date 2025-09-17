// Inheritance — it huradi, mushuk miyovlaydi, maosh esa ko'tarilsa yaxshi bo'lardi 😅

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

    Circle(this.radius, String color) : super(color);
}

class Square extends Shape {
    double sideLength;

    Square(this.sideLength, String color) : super(color);
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

    print("Aylana rangi: ${circle.color}");
    print("Kvadrat rangi: ${square.color}");

    // Task 3.4
    Employee emp = Employee("oddiy_ishchi", 50000);
    Manager mgr = Manager("boshqaruvchi", 60000, 10000);

    print("Xodim maoshi: ${emp.calculateSalary()} so'm");
    print("Menejer maoshi: ${mgr.calculateSalary()} so'm (bonus bor ekan!)");

    // Task 3.5
    Book book = Book("2025", 1, "Erkin Vohidov");
    DVD dvd = DVD("Imlosiz", 2, "Otabek Tursunov");

    book.getDetails();
    dvd.getDetails();
    print("Kutubxonachi: 'Kitoblar vaqtida qaytarilsin, iltimos!' 🙃");
}
