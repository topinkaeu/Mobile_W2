class Passenger {
  final String name;
  final String? address;

  Passenger({required this.name, this.address});
}

class City {
  final String place;

  City(this.place);
}

enum TravelClass { poor, middle, rich }

class TravelTicket {
  final Passenger passenger;
  final City destination;
  final TravelClass level;
  final String? discountcode;

  TravelTicket({
    required this.passenger,
    required this.destination,
    required this.level,
    this.discountcode,
  });
}

void main() {
  Passenger p1 = Passenger(name: "Topin", address: "Phnom Penh");
  Passenger p2 = Passenger(name: "Veasna"); //address is nullable, can be string, can be null

  City c1 = City("Tokyo");

  TravelClass class1 = TravelClass.middle;

  TravelTicket ticket = TravelTicket(
    passenger: p1,
    destination: c1,
    level: class1,
    discountcode: "CEO-AIRLINE",
  );
  print(ticket.passenger.name);
  print(ticket.destination.place);
  print(ticket.level);
  print(ticket.discountcode);
}
