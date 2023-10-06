import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/profileScreen.dart';
import 'package:flutter_app/LoginScreen.dart';
import 'package:flutter_app/Drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                width: 200.0,
                height: 200.0,
                child: Image.asset('assets/logo.png')),
            const SizedBox(height: 40.0),
            const Text(
              'NOTE HUB',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 185, 31),
        title: const Text('NOTE HUB',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/note12.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 40),
              Align(
                alignment: Alignment.center,
                child: Text('COURSE',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 45),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Course(
                            course: 'BCA(DATA SCIENCE)',
                            cardColor: Color.fromARGB(255, 82, 154, 236)),
                        Course(
                            course: 'BCA(AI/ML)',
                            cardColor: Color.fromARGB(255, 220, 124, 184)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Course1(
                            course1: 'BTECH(DATA SCIENCE)',
                            cardColor: Color.fromARGB(255, 88, 199, 140)),
                        Course1(
                            course1: 'BTECH(AI/ML)',
                            cardColor: Color.fromARGB(255, 223, 115, 115)),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 45),
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

class Course extends StatelessWidget {
  final String course;
  final Color cardColor;

  const Course({Key? key, required this.course, required this.cardColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the new page with ListView here
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ListViewPage(course: course),
          ),
        );
      },
      child: Card(
        elevation: 10,
        child: Container(
          width: 200,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            color: cardColor,
          ),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Text(
                course,
                style: const TextStyle(
                    fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewPage extends StatelessWidget {
  final String course;

  const ListViewPage({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace this with your actual list data
    List<String> items = ['BCA(Is Year)', 'BCA(2nd Year)', 'BCA(3rd Year)'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(course),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}

class Course1 extends StatelessWidget {
  final String course1;
  final Color cardColor;

  const Course1({Key? key, required this.course1, required this.cardColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the new page with ListView here
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ListViewPage1(course1: course1),
          ),
        );
      },
      child: Card(
        elevation: 10,
        child: Container(
          width: 200,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            color: cardColor,
          ),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Text(
                course1,
                style: const TextStyle(
                    fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewPage1 extends StatelessWidget {
  final String course1;

  const ListViewPage1({Key? key, required this.course1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace this with your actual list data
    List<String> items = [
      'BTECH(Is Year)',
      'BTECH(2nd Year)',
      'BTECH(3rd Year)',
      'BTECH(4th Year)'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(course1),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}


// class Course extends StatelessWidget {
//   final String course;
//   final Color cardColor;

//   const Course({Key? key, required this.course, required this.cardColor})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 10,
//       child: Container(
//         width: 200,
//         padding: const EdgeInsets.all(14),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           color: cardColor,
//         ),
//         child: Column(
//           children: [
//             const SizedBox(height: 40),
//             Text(
//               course,
//               style:
//                   const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 40),
//           ],
//         ),
//       ),
//     );
//   }
// }
