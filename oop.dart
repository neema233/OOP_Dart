class Car {
  String make;
  String model;
  int year;
  int? mileage;

  // Named constructor for basic details
  Car.basicDetails(this.make, this.model, this.year) {
    mileage = 0; // Initialize mileage to 0
  }

  // Named constructor for all details
  Car.completeDetails(this.make, this.model, this.year, this.mileage);

  void startEngine() {
    print("Engine started!");
  }

  void accelerate() {
    print("Accelerating...");
  }

  void brake() {
    print("Braking...");
  }
}

class Sedan extends Car {
  int? numDoors;

  Sedan.basicDetails(make, model, year) : super.basicDetails(make, model, year);

  Sedan.completeDetails(make, model, year, mileage, this.numDoors)
      : super.completeDetails(make, model, year, mileage);

  @override
  void startEngine() {
    print("Sedan engine started smoothly.");
  }
}

class SportsCar extends Car {
  double? topSpeed;

  SportsCar.basicDetails(make, model, year)
      : super.basicDetails(make, model, year);

  SportsCar.completeDetails(make, model, year, mileage, this.topSpeed)
      : super.completeDetails(make, model, year, mileage);

  @override
  void accelerate() {
    print("Accelerating rapidly... Vroom!");
  }
}

class ElectricCar extends Car {
  int? batteryCapacity;

  ElectricCar.basicDetails(make, model, year)
      : super.basicDetails(make, model, year);

  ElectricCar.completeDetails(make, model, year, mileage, this.batteryCapacity)
      : super.completeDetails(make, model, year, mileage);

  void chargeBattery() {
    print("Charging battery...");
  }
}

void main() {
// Create a Sedan using basic details constructor
  Sedan mysedan = Sedan.basicDetails("Toyota", "Camry", 2023);
  mysedan.startEngine(); // Output: Sedan engine started smoothly.

// Create a SportsCar using complete details constructor
  SportsCar mySportsCar =
      SportsCar.completeDetails("Ferrari", "488 GTB", 2020, 15000, 205);
  mySportsCar.accelerate(); // Output: Accelerating rapidly... Vroom!

// Create an ElectricCar using complete details constructor
  ElectricCar myElectricCar =
      ElectricCar.completeDetails("Tesla", "Model S", 2022, 30000, 95);
  myElectricCar.chargeBattery(); // Output: Charging battery...
}
