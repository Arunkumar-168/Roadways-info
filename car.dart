import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 241, 241),
      appBar: AppBar(
        title: const Text('RoadWays Info '),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    ImageButton(
                      width: 120,
                      height: 120,
                      color: Colors.green,
                      onPressed: () {
                        _showCarDetailsPopup(context);
                      },
                      child: Image.asset(
                        'assets/truck.png', // Replace with the actual image path
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () {
                        _showCarDetailsPopup(context);
                      },
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text('TATA Ace Truck 1'),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        _showCarDetailsPopup(context);
                      },
                      child: const Text(
                        'View Details',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16), // Adjust the spacing between images
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    ImageButton(
                      width: 120,
                      height: 120,
                      color: Colors.green,
                      onPressed: () {
                        // Your button click logic here
                        _showCarDetailsPopup(context);
                      },
                      child: Image.asset(
                        'assets/truck.png', // Replace with the actual image path
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () {
                        _showCarDetailsPopup(context);
                      },
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text('TATA Ace Truck 2'),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        _showCarDetailsPopup(context);
                      },
                      child: const Text(
                        'View Details',
                        style: TextStyle(
                          color: Colors.white,
                        ),
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
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    ImageButton(
                      width: 120,
                      height: 120,
                      color: Colors.green,
                      onPressed: () {
                        // Your button click logic here
                        _showCarDetailsPopup(context);
                      },
                      child: Image.asset(
                        'assets/truck.png', // Replace with the actual image path
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () {
                        _showCarDetailsPopup(context);
                      },
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text('TATA Ace Truck 3'),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        _showCarDetailsPopup(context);
                      },
                      child: const Text(
                        'View Details',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16), // Adjust the spacing between images
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    ImageButton(
                      width: 120,
                      height: 120,
                      color: Colors.green,
                      onPressed: () {
                        // Your button click logic here
                        _showCarDetailsPopup(context);
                      },
                      child: Image.asset(
                        'assets/truck.png', // Replace with the actual image path
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () {
                        _showCarDetailsPopup(context);
                      },
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text('TATA Ace Truck 4'),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        _showCarDetailsPopup(context);
                      },
                      child: const Text(
                        'View Details',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void _showCarDetailsPopup(BuildContext context) {
  TextEditingController textEditingController = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      'assets/truck.png',
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ), // Replace 'image1.jpg' with the path to your first image
                  ),
                  const SizedBox(
                      width: 10), // Add some spacing between the images
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      'assets/truck.png',
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ), // Replace 'image2.jpg' with the path to your second image
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Car Name'), // Replace with the actual car name
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                onPressed: () {
                  // Implement the "Call Now" functionality
                  // For demonstration, you can print a message
                  print('Calling now...');
                },
                child: const Text(
                  'Call Now',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Write Your Experience',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: textEditingController,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Type here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '1/100',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                onPressed: () {
                  String selectedText = textEditingController.text;
                  // Perform your submission logic here
                  print('Selected Text: $selectedText');
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Other Review',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 5),
              const Text(
                'Sivakumar',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 5),
              const Text(
                'Good Service!',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

class ImageButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final VoidCallback onPressed;
  final Widget child;

  ImageButton({
    required this.width,
    required this.height,
    required this.color,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        color: color,
        child: child,
      ),
    );
  }
}
