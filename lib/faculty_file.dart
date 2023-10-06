import 'package:flutter/material.dart';

class MyApp1 extends StatefulWidget {
  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faculty"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 245, 185, 31),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/upinder_mam.jpg'),
              ),
            ),
            title: const Text('Dr. Upinder Kaur'),
            subtitle: const Text('Head of Department(HOD)'),
            onTap: () {},
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/Pravin_sir.jpg'),
              ),
            ),
            title: const Text('Dr. Pravin Kumar'),
            subtitle: const Text('Assistant Professor'),
            onTap: () {},
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/harpal_sir.jpeg'),
              ),
            ),
            title: const Text('Mr. Harpal Singh'),
            subtitle: const Text('Assistant Professor'),
            onTap: () {},
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/navroop_mam.jpeg'),
              ),
            ),
            title: const Text('Dr. Navroop Kaur'),
            subtitle: const Text('Assistant Proffessor'),
            onTap: () {},
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/parneet_mam.jpeg'),
              ),
            ),
            title: const Text('Dr. Parneet Kaur'),
            subtitle: const Text('Assistant Proffessor'),
            onTap: () {},
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/harman_mam.jpeg'),
              ),
            ),
            title: const Text('Dr. Harmandeep Kaur'),
            subtitle: const Text('Assistant Proffessor'),
            onTap: () {},
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 245, 185, 31),
                child: Text(
                  'RR',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            title: const Text('Ms. Rajni Rani'),
            subtitle: const Text('Assistant Proffessor'),
            onTap: () {},
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 245, 185, 31),
                child: Text(
                  'AS',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            title: const Text('Ms. Aanchal Sharma'),
            subtitle: const Text('Assistant Proffessor'),
            onTap: () {},
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 245, 185, 31),
                child: Text(
                  'SK',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            title: const Text('Ms. Sandeep Kaur'),
            subtitle: const Text('Assistant Proffessor'),
            onTap: () {},
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 245, 185, 31),
                child: Text(
                  'ZF',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            title: const Text('Mr. Zubair Fayaz'),
            subtitle: const Text('Assistant Proffessor'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
