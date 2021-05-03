class Vehicle {
  String manufacturer;
  double fuelCapacity;
  double fuelRemaining;

  Vehicle(this.manufacturer, this.fuelCapacity, this.fuelRemaining);

  String showInfo() =>
      '$manufacturer: $fuelRemaining of $fuelCapacity (critical: $criticalFuelLevel)';

  set newFuelRemaning(double val) => fuelRemaining = val;

  double get criticalFuelLevel => fuelCapacity * 0.1;
}

void main() {
  var vehicle = Vehicle('BMW', 60, 30);

  vehicle.newFuelRemaning = 10;

  print(vehicle.showInfo());
}
