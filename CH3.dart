class Person {
  String firstname;
  String lastname;

  Person({required this.firstname, required this.lastname});

  String get fullname => this.firstname + " " + this.lastname;
}

void main() {
  Person p1 = Person(firstname: "Chandara", lastname: "Sok");
  print(p1.fullname);
}
