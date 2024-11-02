import 'package:flutter/material.dart';

class Teask extends StatefulWidget {
  const Teask({super.key});

  @override
  State<Teask> createState() => _TeaskState();
}

class _TeaskState extends State<Teask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 65, 124, 173),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 65, 124, 173),
        actions: const [
          Icon(Icons.wifi, color: Colors.black),
          Icon(Icons.signal_cellular_alt, color: Colors.black),
          Icon(Icons.battery_charging_full, color: Colors.black),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Welcome to Notes',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
      padding:  EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage('assets/Mohsin.jpg'), // Corrected line
      ),
    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("From",
                                  style: TextStyle(color: Colors.black)),
                              const SizedBox(height: 5),
                              SizedBox(
                                width: 120,
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 8),
                                    labelText: "10:00 A.M",
                                    hintStyle:
                                        const TextStyle(color: Colors.black),
                                  ),
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("To",
                                  style: TextStyle(color: Colors.black)),
                              const SizedBox(height: 5),
                              SizedBox(
                                width: 120,
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 8),
                                    labelText: "04:30 P.M",
                                    hintStyle:
                                        const TextStyle(color: Colors.black),
                                  ),
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text("Title", style: TextStyle(color: Colors.black)),
                      const SizedBox(height: 5),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text("Description",
                          style: TextStyle(color: Colors.black)),
                      const SizedBox(height: 5),
                      TextField(
                        maxLines: 4,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    'Choose Priority',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print('High Priority');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red),
                      child: const Text("High",
                      style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 70.0),
                    ElevatedButton(
                      onPressed: () {
                        print('Medium Priority');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                              255, 105, 104, 104)),
                      child: const Text(
                        "Medium",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 70.0),
                    ElevatedButton(
                      onPressed: () {
                        print('Low Priority');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 43, 88, 77),
                      ),
                      child: const Text("Low",
                      style: TextStyle(color: Colors.black),
                          ),
                    ),
                  ],
                ),
               const SizedBox(height: 20),
Center(
  child: SizedBox(
    width: double.infinity, // Makes the button take full width
    child: ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 43, 88, 77),
      ),
      child: const Text(
        "Add",
        style: TextStyle(color: Colors.black),
      ),
    ),
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
