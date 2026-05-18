enum Skill { FLUTTER, DART, OTHER }

class Address {
  final String _street;
  final String _city;
  final int _zipCode;

  Address(this._street, this._city, this._zipCode);
  String get street => _street;
  String get city => _city;
  int get zipCode => _zipCode;

  @override
  String toString() {
    return "Employee Address: Street: $street, City: $city, Zipcode of city: $zipCode";
  }
}

class Employee {
  String _name;
  double _baseSalary;
  //Q1: Add skill, address, and Year of experience
  int _yearofEX;
  Address _address;
  Skill _skill;

  Employee(this._name,
           this._baseSalary, 
           this._yearofEX, 
           this._skill, 
           this._address
           );

  String get name => _name;
  double get baseSalary => _baseSalary;
  int get yearofEX => _yearofEX;
  Address get address => _address;
  Skill get skill => _skill;


  Employee.mobileDeveloper(
    this._name,
    this._baseSalary,
    this._yearofEX,
    this._address,
  ) : _skill = Skill.FLUTTER;

  Employee.dartDeveloper(
    this._name,
    this._baseSalary,
    this._yearofEX,
    this._address,
  ) : _skill = Skill.DART; //Automatically assign DART skill in this case

  void printDetails() {
    print('Employee: $name, Base Salary: \$${baseSalary}');
    print('Year of Experienc: $yearofEX');
    print('SKill: ${skill.name}');
    print('Address: $address');
  }
}

void main() {
  print("Employee 1: ");
  Address add1 = Address('Duan Penh str', 'Phnom Penh', 12200);
  var emp1 = Employee('Sokea', 40000, 5, Skill.FLUTTER, add1);
  emp1.printDetails();

  print("\nEmployee 2: ");
  Address add2 = Address('National 5 str', 'Siem Reap', 13500);
  var emp2 = Employee('Ronan', 45000, 10, Skill.DART, add2);
  emp2.printDetails();

  print("\nEmployee 3: ");
  Address add3 = Address('National 5 str', 'Kampot', 14500);
  var emp3 = Employee.mobileDeveloper('Jaze', 50000, 7, add3);
  emp3.printDetails();

}
