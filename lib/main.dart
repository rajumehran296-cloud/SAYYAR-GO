import 'package:flutter/material.dart';

void main() {
  runApp(const SayyarGo());
}

class SayyarGo extends StatelessWidget {
  const SayyarGo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SAYYAR GO',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const DriverHome(),
    );
  }
}

class DriverHome extends StatefulWidget {
  const DriverHome({super.key});

  @override
  State<DriverHome> createState() => _DriverHomeState();
}

class _DriverHomeState extends State<DriverHome> {
  bool online = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'SAYYAR GO',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 25),
            const Icon(Icons.local_taxi,
                size: 90, color: Colors.red),
            const Text(
              'Welcome Driver!',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(25),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text('Driver Status',
                      style: TextStyle(fontSize: 20)),
                  const SizedBox(height: 15),
                  Text(
                    online ? 'YOU ARE ONLINE' : 'YOU ARE OFFLINE',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          online ? Colors.black : Colors.red,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 15),
                    ),
                    onPressed: () {
                      setState(() {
                        online = !online;
                      });
                    },
                    child: Text(
                        online ? 'GO OFFLINE' : 'GO ONLINE'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Card(
              child: ListTile(
                leading: Icon(Icons.account_balance_wallet,
                    color: Colors.red),
                title: Text('My Earnings'),
                subtitle: Text('SAR 0.00'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.directions_car,
                    color: Colors.red),
                title: Text('My Rides'),
                subtitle: Text('No rides yet'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
