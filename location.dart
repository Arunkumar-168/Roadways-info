import 'package:flutter/material.dart';
import 'package:roadways_info/Car.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final TextEditingController _searchController = TextEditingController();
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

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 251, 252),
      appBar: AppBar(
        title: const Text('RoadWays Info '),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                controller: _searchController,
                onChanged: (value) {
                  _filterLocations();
                },
                decoration: const InputDecoration(
                  hintText: 'Enter location name',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              // Display filtered locations as buttons
              for (String location in filteredLocations)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyHomePage(),
                          ),
                        );

                        // Handle button click
                        print('Selected location: $location');
                      },
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      child: Text(location),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
