// Enums — hayot tartibi, trafik chiroqlari va biroz hazil 😄

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
            return 'To\'xta! (hayot shirin)';
        case TrafficLight.yellow:
            return 'Ehtiyot! (signalga tayyorlan)';
        case TrafficLight.green:
            return 'Yur! (gaz, lekin qoidaga muvofiq)';
        
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
        
    }
}

void main(){
    // Task 2.2
    OrderStatus status = OrderStatus.processing;
    print('Buyurtma holati: $status (posilkani kutyapmiz)');

    // Task 2.3
    TrafficLight currentLight = TrafficLight.red;
    print('Svetafor holati: $currentLight');
    print('Tavsiya: ${recommendAction(currentLight)}');

    // Task 2.4
    User user = User('Muhammadali', UserRole.editor);
    print('Foydalanuvchi: ${user.name}, Roli: ${user.role}');
    print('Tahrirlash huquqi: ${user.hasEditPermission()}');

    // Task 2.5
    TrafficLight light1 = TrafficLight.green;
    TrafficLight light2 = TrafficLight.yellow;
    TrafficLight light3 = TrafficLight.red;
    print('Yashil davomiyligi: ${durationInSecond(light1)} soniya');
    print('Sariq davomiyligi: ${durationInSecond(light2)} soniya');    
    print('Qizil davomiyligi: ${durationInSecond(light3)} soniya');

}