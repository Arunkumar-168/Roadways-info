import 'package:flutter/material.dart';
import 'package:roadways_info/Car.dart';
import 'package:roadways_info/enquiry.dart';
import 'package:roadways_info/profile.dart';
import 'package:roadways_info/main.dart';
import 'package:roadways_info/location.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class servicePage extends StatefulWidget {
  const servicePage({Key? key}) : super(key: key);

  @override
  _servicePageState createState() => _servicePageState();
}

class _servicePageState extends State<servicePage> {
  final TextEditingController _searchController = TextEditingController();
  bool miniTrucksSelected = false;
  bool carsSelected = false;
  bool minibusesSelected = false;
  bool busesSelected = false;

  void updateInfo() {
    setState(() {});
  }

  void car() {
    setState(() {});
  }

  List<String> filteredLocations = [];

  final List<String> locations = [
    'Udumalpet',
    'Pollachi',
    'Coimbatore',
    'Tirupur',
    'Chennai',
    'Bangalore',
    'Tiruchi',
  ];

  @override
  void initState() {
    super.initState();
    // Initialize filteredLocations with all locations
    filteredLocations = List.from(locations);
  }

  void _filterLocations() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      // Filter locations based on the search query
      filteredLocations = locations
          .where((location) => location.toLowerCase().contains(query))
          .toList();
    });
  }

  Future<void> _logout(BuildContext context) async {
    try {
      final storage = FlutterSecureStorage();
      await storage.delete(key: 'login_token');
      await Future.delayed(Duration.zero);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    } catch (error) {
      print('Error during logout: $error');
    }
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 193, 233, 243),
      appBar: AppBar(
        title: const Text('RoadWays Info '),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(height: 30),
            ListTile(
              title: Container(
                width: 150,
                height: 50,
                padding: const EdgeInsets.all(1),
                margin: const EdgeInsets.symmetric(vertical: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.green],
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Service List',
                    style: TextStyle(
                      color: Colors.white, // Set text color
                      fontWeight: FontWeight.bold, // Make text bold
                      fontSize: 16, // Set font size
                    ),
                  ),
                ),
              ),
              onTap: () {
                // Handle onTap event, typically used for navigation
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Container(
                width: 150,
                height: 50,
                padding: const EdgeInsets.all(1),
                margin: const EdgeInsets.symmetric(vertical: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.green],
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Enquiry Page',
                    style: TextStyle(
                      color: Colors.white, // Set text color
                      fontWeight: FontWeight.bold, // Make text bold
                      fontSize: 16, // Set font size
                    ),
                  ),
                ),
              ),
              onTap: () {
                // Handle onTap event, typically used for navigation
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('CATEGORIES', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Handle checkbox selection here
              },
            ),
            Row(
              children: [
                Checkbox(
                  value: miniTrucksSelected,
                  onChanged: (value) {
                    setState(() {
                      miniTrucksSelected = value!;
                      updateInfo();
                    });
                  },
                ),
                const Text('Mini Trucks'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: carsSelected,
                  onChanged: (value) {
                    setState(() {
                      carsSelected = value!;
                      car();
                    });
                  },
                ),
                const Text('Car'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: minibusesSelected,
                  onChanged: (value) {
                    setState(() {
                      minibusesSelected = value!;
                      updateInfo();
                    });
                  },
                ),
                const Text('Mini Buses'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: busesSelected,
                  onChanged: (value) {
                    setState(() {
                      busesSelected = value!;
                      updateInfo();
                    });
                  },
                ),
                const Text('Buses'),
              ],
            ),
            const SizedBox(height: 5),
            const SizedBox(width: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    updateInfo();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(),
                      ),
                    );
                  },
                  child: Container(
                    width: 70,
                    height: 40,
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [Colors.blue, Colors.green],
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Apply',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Logout'),
              onTap: () {
                _logout(context); // Navigate to the profile page
              },
            ),
          ],
        ),
      ),
      body: GestureDetector(
        child: SizedBox(
          height: height,
          child: Form(
            key: _formKey,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LocationPage(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red, // Adjust the color as needed
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Enter the Location',
                            style: TextStyle(
                              color: Colors.black, // Adjust the color as needed
                            ),
                          ),
                          Spacer(), // Add spacer to push the search icon to the right
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 25),
                        height: height / 1.4,
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  suffixIcon: Icon(Icons.search),
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Service List',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            // Added to create space between service options
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 125,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.grey),
                                            ),
                                            child: Column(
                                              children: [
                                                const Icon(
                                                  Icons.local_shipping,
                                                  size: 30,
                                                  color: Colors.red,
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const MyHomePage(),
                                                      ),
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Goods&Career",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                        width:
                                            10), // Adjust the spacing between images
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 125,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.grey),
                                            ),
                                            child: Column(
                                              children: [
                                                const Icon(
                                                  Icons.directions_bus_rounded,
                                                  size: 30,
                                                  color: Colors.red,
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const MyHomePage(),
                                                      ),
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Tours&Travels",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 125,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.grey),
                                            ),
                                            child: Column(
                                              children: [
                                                const Icon(
                                                  Icons.local_taxi,
                                                  size: 30,
                                                  color: Colors.red,
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const MyHomePage(),
                                                      ),
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Cab&Taxi",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                        width:
                                            16), // Adjust the spacing between images
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 125,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.grey),
                                            ),
                                            child: Column(
                                              children: [
                                                const Icon(
                                                  Icons.directions_car,
                                                  size: 30,
                                                  color: Colors.red,
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const MyHomePage(),
                                                      ),
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Auto",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 125,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.grey),
                                            ),
                                            child: Column(
                                              children: [
                                                const Icon(
                                                  Icons.local_car_wash_sharp,
                                                  size: 30,
                                                  color: Colors.red,
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const MyHomePage(),
                                                      ),
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Ambulance",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                        width:
                                            16), // Adjust the spacing between images
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 125,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.grey),
                                            ),
                                            child: Column(
                                              children: [
                                                const Icon(
                                                  Icons.local_car_wash,
                                                  size: 30,
                                                  color: Colors.red,
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const MyHomePage(),
                                                      ),
                                                    );
                                                  },
                                                  child: const Text(
                                                    "Car wash",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            // const SizedBox(height: 20),
                            // if (miniTrucksSelected)
                            //   const Column(
                            //     children: [
                            //       Text('Name: Hundai'),
                            //       Text('Phone Number: 123-456-7890'),
                            //     ],
                            //   ),
                            // if (carsSelected)
                            //   const Column(
                            //     children: [
                            //       Text('Name: Madurai'),
                            //       Text('Phone Number: 987-654-3210'),
                            //     ],
                            //   ),
                            // if (minibusesSelected)
                            //   const Column(
                            //     children: [
                            //       Text('Name: Goods Carrier'),
                            //       Text('Date: 2023-11-27'),
                            //       Text('Address: Your Address'),
                            //     ],
                            //   ),
                            // if (busesSelected)
                            //   const Column(
                            //     children: [
                            //       Text('Name: Goods Carrier'),
                            //       Text('Date: 2023-11-27'),
                            //       Text('Address: Your Address'),
                            //     ],
                            //   ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
