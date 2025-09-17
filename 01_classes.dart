// CLASSES — kichkina lekin mehribon misollar 🙂


// Task 1.2
class Book {
  String title;
  String author;
  int numberOfPages;
  
  Book(this.title, this.author, this.numberOfPages);
  
  void displayInfo(){
    print('Kitob ma\'lumotlari: "$title" — $author, $numberOfPages bet (choy bilan o\'qish tavsiya)');
  }
}

// Task 1.3
class Student{
    String name;
    int age;
    List<double> grades;

    Student(this.name, this.age, this.grades);

    double calculateAverageGrade(){
      double sum = grades.reduce((a, b) => a + b);
      return sum / grades.length;
    }
}

// Task 1.4
class BankAccount{
    int accountNumber;
    String accountHolderName;
    double balance;

    BankAccount(this.accountNumber, this.accountHolderName, this.balance);

    void deposit(double amount){
      if(amount > 0){
        balance += amount;
        print('Hisob to\'ldirildi: \$${amount}. Yangi balans: \$${balance} (baraka top!)');
      } else {
        print('yo\'q, yo\'q... Manfiy summa yo\'q!');
      }
    }

    void withdraw(double amount){
      if(amount > 0 && amount <= balance){
        balance -= amount;
        print('Pul yechildi: \$${amount}. Qolgan balans: \$${balance} (osh narxi qimmat bo\'libdi)');
      } else {
        print('Balans yetarli emas, iltimos choyni kamroq shakar bilan iching 🙂');
      }
    }
}

// Task 1.5
class Rectangle{
    double width;
    double height;

    Rectangle(this.width, this.height);

    double calculateArea(){
      return width * height;
    }

    double calculatePerimeter(){
      return (width + height) * 2;
    }
}

void main() {
    // Task 1.2
    Book book = Book('Qalb sirlari', 'Azizbek Karimov', 123);
    book.displayInfo();
    
    // Task 1.3
    Student student = Student('Dilnoza', 20, [85.5, 99.9, 78.5]);
    double averageGrade = student.calculateAverageGrade();
    print('Average grade for ${student.name} is $averageGrade');

    //Task 1.4
    BankAccount account1 = BankAccount(123456, 'Sardor Bek', 9999.0);
    BankAccount account2 = BankAccount(654321, 'Gulnoza', 10.0);

    account1.deposit(500.0);
    account1.withdraw(200.0);
    account2.deposit(30.0);
    account2.withdraw(100.0);

    // Task 1.5
    Rectangle rectangle = Rectangle(2.0, 8.0);
    double area = rectangle.calculateArea();
    double perimeter = rectangle.calculatePerimeter();  
    print('Rectangle area: $area, perimeter: $perimeter');
}