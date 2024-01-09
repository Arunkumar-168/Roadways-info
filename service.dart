import 'package:flutter/material.dart';
import 'package:roadways_info/Car.dart';
import 'package:roadways_info/enquiry.dart';
import 'package:roadways_info/profile.dart';
import 'package:roadways_info/main.dart';

class servicePage extends StatefulWidget {
  const servicePage({Key? key}) : super(key: key);

  @override
  _servicePageState createState() => _servicePageState();
}

class _servicePageState extends State<servicePage> {
  bool isCategoriesChecked = false;
  bool isMiniTrucksChecked = false;
  bool isChennaiChecked = false;
  bool isCovidChecked = false;
  bool isBangaloreChecked = false;
  bool isCoimbatoreChecked = false;
  bool isudumalpetChecked = false;
  bool isMinibusesChecked = false;
  bool isCarsChecked = false;
  bool isBusesChecked = false;

  List<String> allWords = [
    // 'Apple',
    // 'Banana',
    // 'Cherry',
    // 'Date',
    // 'Elderberry',
    // 'Fig',
    // 'Grapes',
    // ... Add more words as needed
  ];

  List<String> filteredWords = [];

  @override
  void initState() {
    super.initState();
    // Initialize the filtered list with all words
    filteredWords = List.from(allWords);
  }

  void filterWords(String query) {
    query = query.toLowerCase();
    setState(() {
      filteredWords = allWords
          .where((word) =>
              word.toLowerCase().contains(query) ||
              word.toUpperCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 156, 235, 228),
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
            const SizedBox(height: 100),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: isMiniTrucksChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isMiniTrucksChecked = value!;
                    });
                  },
                ),
                const SizedBox(height: 5),
                const Text('Mini Trucks'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: isCarsChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isCarsChecked = value!;
                    });
                  },
                ),
                const SizedBox(height: 5),
                const Text('Cars'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: isMinibusesChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isMinibusesChecked = value!;
                    });
                  },
                ),
                const SizedBox(height: 5),
                const Text('Mini buses'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: isBusesChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isBusesChecked = value!;
                    });
                  },
                ),
                const SizedBox(height: 5),
                const Text('Buses'),
              ],
            ),
            const Divider(),
            ListTile(
              title: const Text('LOCATION', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Handle checkbox selection here
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: isudumalpetChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isudumalpetChecked = value!;
                    });
                  },
                ),
                const SizedBox(width: 5),
                const Text('udumalpet'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: isCoimbatoreChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isCoimbatoreChecked = value!;
                    });
                  },
                ),
                const SizedBox(width: 5),
                const Text('Coimbatore'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: isChennaiChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChennaiChecked = value!;
                    });
                  },
                ),
                const SizedBox(width: 5),
                const Text('Chennai'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: isBangaloreChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isBangaloreChecked = value!;
                    });
                  },
                ),
                const SizedBox(width: 5),
                const Text('Bangalore'),
              ],
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Logout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                ); // Navigate to the profile page
              },
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              height: height / 1.3,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 125,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey),
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
                              width: 16), // Adjust the spacing between images
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 125,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey),
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
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 125,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey),
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
                              width: 16), // Adjust the spacing between images
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 125,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey),
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
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 125,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey),
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
                              width: 16), // Adjust the spacing between images
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 125,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
