// Polymorphism — qilich silkitsa, kamon otadi, hammasi halol sport 😉

// import removed as unused

// Task 5.2
class Weapon{
    void action(){
        print("Harakat qilinyapti (qahva ichilgandan keyin tezroq)");
    }
}

class Sword extends Weapon{
    @override
    void action(){
        print("Qilich silkityapti! (Samuray bo'lib qoldikmi?)");
    }
}

class Bow extends Weapon{
    @override
    void action(){
        print("Kamon otyapti! (nishon — qozon qopqog'i emas)");
    }
}


//Task 5.3
class Animal{
    void eat(){
        print("Ovqatlanyapti — palovmi? 😋");
    }
}

class Lion extends Animal{
    @override
    void eat(){
        print("Go'sht yeyapti (shashlik hidi keldi)");
    }
}

class Goat extends Animal{
    @override
    void eat(){
        print("O't yeyapti (tabiat parvarishi)");
    }
}

void feed(Animal animal){
    animal.eat();
}


// Task 5.4
class PaymentMethod{
    void pay(double amount){
        print("To'lov: \$${amount} — kassa ""ding"" dedi");
    }
}

class CreditCard extends PaymentMethod{
    void processPayment(double amount){
        print("Jarayon... (terminal PIN kutyapti)");
        pay(amount);
    }
}

class PayPal extends PaymentMethod{
    void processPayment(double amount){
        print("Jarayon... (PayPal bekor qilmadi, xotirjam)");
        pay(amount);
    }
}


