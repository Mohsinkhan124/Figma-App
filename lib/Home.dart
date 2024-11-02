import 'package:flutter/material.dart';
import 'package:flutter_application_1/Task.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 65, 124, 173),
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
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            const   Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Padding(
      padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Text(
        'Welcome to Notes',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
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

                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 50, 0),
                  child: Text(
                    'Have a great day!',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    'My Priority Task',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: 230,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(178, 218, 209, 209),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: ListView(
                        shrinkWrap: true, 
                        children: [
                          ListTile(
                            title: const Text('2 hours Ago'),
                            trailing: IconButton(
                              icon: const Icon(Icons.mobile_screen_share),
                              onPressed: () {
                                print('Action for 2 hours ago');
                              },
                            ),
                          ),
                          const ListTile(
                            title: Text(
                              'Mobile App UI Design',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const ListTile(
                            title: Text('using Figma and other tools'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 230,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(178, 218, 209, 209),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 6,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            title: const Text('4 hours Ago'),
                            trailing: IconButton(
                              onPressed: () {
                                print('Salamualaikum');
                              },
                              icon: const Icon(Icons.camera_alt),
                            ),
                          ),
                          const ListTile(
                            title: Text(
                              'Capture sun Rise Shots',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const ListTile(
                            title: Text('complete GuruShot Challenge'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                      child: Text(
                        'My Task',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                      child: FloatingActionButton(
                        onPressed: () {
                   Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Teask()),
                   );
                        },
                        child: const Icon(Icons.add),
                        backgroundColor: Colors.green,
                        mini: true,
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        'Today\'s Task',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Weekly Task',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        'Monthly Task',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ],
                ),
               Container(
  padding: const EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          fillColor: Colors.white, 
          filled: true, 
          suffixIcon: IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              print('khan');
            },
          ),
          labelText: 'Complete Assigment #2',
          labelStyle: const TextStyle(color: Colors.black),
        ),
        style: const TextStyle(color: Colors.black),
      ),
      const SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          fillColor: Colors.white,
          filled: true,
           suffixIcon: IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              print('khan');
            },
          ), 
          labelText: 'Submit Fee Challan',
          labelStyle: const TextStyle(color: Colors.black),
        ),
        style: const TextStyle(color: Colors.black),
      ),
    ],
  ),
),

              ],
            ),
          ),
        ),
      ),
      drawer: const Drawer(
        child: ListTile(
          title: Text('Salamu alakum'),
        ),
      ),
    );
  }
}

