import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  void login(BuildContext context) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 65, 124, 173),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 65, 124, 173),
        actions: const [
          Icon(Icons.wifi, color: Colors.black),
          Icon(Icons.signal_cellular_alt, color: Colors.black),
          Icon(Icons.battery_charging_full, color: Colors.black),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Manage your',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'Daily TO DO',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Image.asset(
                      'assets/figma.jpg',
                    ),
                  ),
                ),
               Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ElevatedButton(
      onPressed: () {
        login(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 228, 145, 36),
        minimumSize: const Size(60, 0), // Set button width and height
      ),
      child: const Text(""),
    ),
    const SizedBox(width: 50.0),
    ElevatedButton(
      onPressed: () {
        login(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 233, 164, 73),
        minimumSize: const Size(60, 0), // Set button width and height
      ),
      child: const Text(""),
    ),
    const SizedBox(width: 50.0),
    ElevatedButton(
      onPressed: () {
        login(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 248, 189, 111),
        minimumSize: const Size(60, 0), // Set button width and height
      ),
      child: const Text(""),
    ),
  ],
),

              const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    ' Without much worry just managethings as easy as piece of cake',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              
               Center( 

  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 232, 248, 11), // Set button color
    ),
    child: const Text("Create a Note"),
  ),
)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
