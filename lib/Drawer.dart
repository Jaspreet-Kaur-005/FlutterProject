import 'package:flutter/material.dart';
import 'package:flutter_app/notes_file.dart';
import 'package:flutter_app/faculty_file.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const SizedBox(
            height: 60,
            child: DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 240, 172, 38)),
              child: Text('Note Hub', style: TextStyle(color: Colors.white)),
            ),
          ),
          // ListTile(
          //   leading: const Icon(Icons.class_),
          //   title: const Text('Classes'),
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => SecondScreen()));
          //   },
          // ),
          // const SizedBox(height: 16),
          // ListTile(
          //   leading: const Icon(Icons.check),
          //   title: const Text('Notes'),
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => const HomeScreen()));
          //   },
          // ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Faculty'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp1()));
            },
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.notification_add),
            title: const Text('Notifications'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Explore'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
              // Navigator.pop(context);
            },
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.check),
            title: const Text('Notes'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
              // Navigator.pop(context);
            },
          ),
          const SizedBox(height: 10),
          Container(
            width: 30,
            // height: 40,
            child: ListTile(
              leading: Image.asset('assets/ppr.png'),
              title: const Text('Question Paper'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
                // Navigator.pop(context);
              },
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 30,
            // height: 30,
            child: ListTile(
              leading: Image.asset('assets/result.png'),
              title: const Text('Result'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
                // Navigator.pop(context);
              },
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 30,
            // height: 30,
            child: ListTile(
              leading: Image.asset('assets/project.png'),
              title: const Text("Projects"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
                // Navigator.pop(context);
              },
            ),
          ),
          //const SizedBox(height: 40),
          // Container(
          //   width: 20,
          //   height: 20,
          //   child: ListTile(
          //     leading: Image.asset('assets/todologo.png'),
          //     title: const Text('Stat II'),
          //     onTap: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => SecondScreen()));
          //       // Navigator.pop(context);
          //     },
          //   ),
          // ),
          // const SizedBox(height: 40),
          // Container(
          //   width: 20,
          //   height: 20,
          //   child: ListTile(
          //     leading: Image.asset('assets/todologo.png'),
          //     title: const Text('BCA + BTECH 2021'),
          //     onTap: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => SecondScreen()));
          //       // Navigator.pop(context);
          //     },
          //   ),
          // ),
          // const SizedBox(height: 40),
          // Container(
          //   width: 20,
          //   height: 20,
          //   child: ListTile(
          //     leading: Image.asset('assets/todologo.png'),
          //     title: const Text('Machine learning for BTECH'),
          //     onTap: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => SecondScreen()));
          //       // Navigator.pop(context);
          //     },
          //   ),
          // ),
          // const SizedBox(height: 40),
          // Container(
          //   width: 20,
          //   height: 20,
          //   child: ListTile(
          //     leading: Image.asset('assets/todologo.png'),
          //     title: const Text('Data Structures'),
          //     onTap: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => SecondScreen()));
          //       // Navigator.pop(context);
          //     },
          //   ),
          // ),
          // const SizedBox(height: 40),
          // Container(
          //   width: 20,
          //   height: 20,
          //   child: ListTile(
          //     leading: Image.asset('assets/todologo.png'),
          //     title: const Text('2021 Python BCA & BTECH'),
          //     onTap: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => SecondScreen()));
          //       // Navigator.pop(context);
          //     },
          //   ),
          // ),
          // const SizedBox(height: 40),
          // Container(
          //   width: 20,
          //   height: 20,
          //   child: ListTile(
          //     leading: Image.asset('assets/todologo.png'),
          //     title: const Text('RDBMS 2022(BCA+BTECH)'),
          //     onTap: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => SecondScreen()));
          //       // Navigator.pop(context);
          //     },
          //   ),
          // ),
          const SizedBox(height: 40),
          const Divider(),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.offline_pin),
            title: const Text('Offline files'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.archive_rounded),
            title: const Text('Archived files'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.folder_shared),
            title: const Text('Classroom folders'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Help'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
              // Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 185, 31),
        title: const Text(
          'Second Screen',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: const Text('Go to Previous Page'),
      //   ),
      // ),
    );
  }
}

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 185, 31),
        title: const Text(
          'Notifications',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: const Text('Go to Previous Page'),
      //   ),
      // ),
    );
  }
}
