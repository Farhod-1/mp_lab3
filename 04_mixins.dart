// MIXINS

// Task 4.2
mixin Flyer {
    void fly() {
        print("Taking off!");
    }
}

class Bird with Flyer {
    String name;
    Bird(this.name);
}

class Plane with Flyer {
    String model;
    Plane(this.model);
}

// Task 4.3
mixin Logger{
    void log(String message){
        print(message);
    }
}

class DataService with Logger{
    void fetchData(){
        log("Data fetched successfully");
    }
}

// Task 4.4
mixin Validator{
    bool isEmailValid(String email){
        bool hasAt = email.contains('@');
        bool hasDot = email.contains('.');
        return hasAt && hasDot;
    }
    bool isPasswordValid(String password){
        return password.length >= 8;
    }
}

class UserSignup with Validator{
    String email;
    String password;

    UserSignup(this.email, this.password);

    void signUp() {
        if (isEmailValid(email) && isPasswordValid(password)) {
            print("User signed up successfully!");
        } else {
            print("Sign up failed. Please check your credentials.");
        }
    }
}

// Task 4.5
mixin Performer{
    void perform(){
        print("Performing something");
    }
}

mixin Musician {
    void playInstrument(){
        print("Playing instrument");
    }
}

class Artist {
    String name;
    Artist(this.name);
}

class Dancer extends Artist with Performer{
    Dancer(String name) : super(name);
    void dance(){
        perform();
    }
}

class Guitarist extends Artist with Performer, Musician{
    Guitarist(String name) : super(name);
    void performAndPlay(){
        perform();
        playInstrument();
    }
}


void main() {
    // Task 4.2
    Bird sparrow = Bird("Sparrow");
    sparrow.fly();

    Plane boeing = Plane("Boeing 747");
    boeing.fly();

    // Task 4.3
    DataService service = DataService();
    service.fetchData();

    // Task 4.4
    UserSignup user = UserSignup("fulenergy7@gmail.com", "hahaNotTellingMyPassword");
    user.signUp();
    UserSignup invalidUser = UserSignup("notFakeEmail.com.123", "123");
    invalidUser.signUp();   

    //Task 4.5
    Dancer dancer = Dancer("Alice");
    dancer.dance();
    Guitarist guitarist = Guitarist("Bob");
    guitarist.performAndPlay();
}