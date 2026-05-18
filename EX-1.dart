enum Skill { FLUTTER, DART, OTHER }

class Address {
  final String street;
  final String city;
  final int zipCode;

  Address(this.street, this.city, this.zipCode);
  @override
  String toString() {
    return "Employee Address: Street: $street, City: $city, Zipcode of city: $zipCode";
  }
}

class Employee {
  String name;
  double baseSalary;
  //Q1: Add skill, address, and Year of experience
  int yearofEX;
  Address address;
  Skill skill;

  Employee(this.name, this.baseSalary, this.yearofEX, this.skill, this.address);

  void printDetails() {
    print('Employee: $name, Base Salary: \$${baseSalary}');
    print('Year of Experienc: $yearofEX');
    print('SKill: $skill.name');
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
}
