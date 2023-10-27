class Admin {
  static List<List<dynamic>> trains = [
    
    [
      1000, // train number
      'Uzhavan', // train name
      900, // total seats
      400.0, // first class price
      300.0, // second class price
      200.0, // sleeper price
      'Thanjavur', // boarding point
      'ChennaiEgmore', // designation point
      '09:55:00', // departure time
      '04:30:00', // arrival time
      '30-10-2023' // journey date
    ],
    [
      2000,
      'Antyodaya',
      900,
      600.0,
      500.0,
      400.0,
      'Nagarcoil',
      'Thambaram',
      '15:10:00',
      '05:00:00',
      '30-10-2023'
    ]
  ];

  static List<List<dynamic>> chart = [];
  static addToChart(
      int trainNumber,
      String dateOfJourney,
      String boarding,
      String designation,
      List<String> passengersName,
      List<int> passengersAge,
      String coach,
      double? price) 
  {
    int pnr = 999;
    for (int i = 0; i < passengersAge.length; i++) {
      List<dynamic>tempChart = [];
      
      tempChart.add(++pnr);
      tempChart.add(trainNumber);
      tempChart.add(trains[0][1]);
      tempChart.add(passengersName[i]);
      tempChart.add(passengersAge[i]);
      tempChart.add(i + 1);
      tempChart.add(boarding);
      tempChart.add(designation);
      tempChart.add(coach);
      
      chart.add(tempChart);
    }
  }
  
  void printBookedTickets() {
    print('\nBOOKED TICKETS');
    for(int i=0; i<chart.length; i++){
      print(chart[i]);
    }
  }
   
  void trainDetails(){
    print('\nTRAIN DETAILS');
    for(var x in trains){
      print(x);
    }
  }
}

class User {
  int? trainNumber;
  String? dateOfJourney;
  String? boarding;
  String? designation;
  int noOfPass = 3;
  List<String> passengersName = ['Dhinesh', 'Venkatesh', 'Vijay'];
  List<int> passengersAge = [21, 22, 22];
  String? coach;
  double? price;

  void bookTicket() {
    trainNumber = 1000;
    print('Train number: $trainNumber');

    dateOfJourney = '30-10-2023';
    print('Date of Journet: $dateOfJourney');

    boarding = 'Thanjavur';
    print('Boarding: $boarding');

    designation = 'ChennaiEgmore';
    print('Designation: $designation');
    
    for(int i=0; i<passengersName.length; i++){
      print('Passenger ${i+1} name: ${passengersName[i]}');
      print('Passenger ${i+1} age : ${passengersAge[i]}');
    }
    print('Enter yout choice\n1.FirstAc  2.SecondAC 3.Sleeper\n1');
    coach = 'First AC';

    double d = Admin.trains[0][3];
    double d2 = Admin.trains[0][4];
    double d3 = Admin.trains[0][5];

    switch (coach) {
      case "First AC":
        price = noOfPass * d;
        break;
      case "Second AC":
        price = noOfPass * d2;
        break;
      case "Sleeper":
        price = noOfPass * d3;
        break;
    }

    print('Amount to be paid: $price');
    Admin.addToChart(trainNumber!, dateOfJourney!, boarding!, designation!,
        passengersName, passengersAge, coach!, price);
    print('. . Your Tickets are successfully booked. .');
  }
}

class Railway {
  Railway() {
    print('\n\nBooking Ticket...\n');
    User user = User();
    user.bookTicket();
    Admin().printBookedTickets();
    Admin().trainDetails();
  }
}

void main() {
  print('. . . Program starts . . .');
  Railway();
}
