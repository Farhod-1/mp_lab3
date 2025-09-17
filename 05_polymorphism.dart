// Polymorphism 

// import removed as unused

// Task 5.2
class Weapon{
    void action(){
        print("Doing some action");
    }
}

class Sword extends Weapon{
    @override
    void action(){
        print("Swinging!");
    }
}

class Bow extends Weapon{
    @override
    void action(){
        print("Shooting!");
    }
}


//Task 5.3
class Animal{
    void eat(){
        print("Eating something");
    }
}

class Lion extends Animal{
    @override
    void eat(){
        print("Eating meat");
    }
}

class Goat extends Animal{
    @override
    void eat(){
        print("Eating grass");
    }
}

void feed(Animal animal){
    animal.eat();
}


// Task 5.4
class PaymentMethod{
    void pay(double amount){
        print("Paying \$${amount}");
    }
}

class CreditCard extends PaymentMethod{
    void processPayment(double amount){
        print("Processing...");
        pay(amount);
    }
}

class PayPal extends PaymentMethod{
    void processPayment(double amount){
        print("Processing...");
        pay(amount);
    }
}


