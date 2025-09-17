// Enums 

// Task 2.2
enum OrderStatus {
    pending,
    processing,
    shipped,
    delivered,
    cancelled
}

// Task 2.3
enum TrafficLight {
    red,
    yellow,
    green
}

String recommendAction(TrafficLight light) {
    switch (light) {
        case TrafficLight.red:
            return 'Stop';
        case TrafficLight.yellow:
            return 'Caution';
        case TrafficLight.green:
            return 'Go';
        default:
            return 'Invalid light';
    }
}

// Task 2.4
enum UserRole{
    admin,
    editor,
    guest
}

class User{
    String name;
    UserRole role;

    User(this.name, this.role);
    bool hasEditPermission(){
      return role == UserRole.admin || role == UserRole.editor;
    }
}

// Task 2.5
int durationInSecond(TrafficLight light){
    switch(light){
        case TrafficLight.red:
            return 30;
        case TrafficLight.yellow:
            return 5;
        case TrafficLight.green:
            return 45;
        default:
            return 0;
    }
}

void main(){
    // Task 2.2
    OrderStatus status = OrderStatus.processing;
    print('Order status: $status');

    // Task 2.3
    TrafficLight currentLight = TrafficLight.red;
    print('Traffic light: $currentLight');
    print('Recommended action: ${recommendAction(currentLight)}');

    // Task 2.4
    User user = User('Alice', UserRole.editor);
    print('User: ${user.name}, Role: ${user.role}');
    print('Has edit permission: ${user.hasEditPermission()}');

    // Task 2.5
    TrafficLight light1 = TrafficLight.green;
    TrafficLight light2 = TrafficLight.yellow;
    TrafficLight light3 = TrafficLight.red;
    print('Green light duration: ${durationInSecond(light1)} seconds');
    print('Yellow light duration: ${durationInSecond(light2)} seconds');    
    print('Red light duration: ${durationInSecond(light3)} seconds');

}