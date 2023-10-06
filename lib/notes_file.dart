import 'package:flutter/material.dart';

class Note {
  final int id;
  final String title;
  final String content;
  final String backgroundImage;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.backgroundImage,
  });
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Note> sampleNotes = [];
  List<Note> filteredNotes = [];
  bool sorted = false;

  @override
  void initState() {
    super.initState();
    sampleNotes = [
      Note(
          id: 0,
          title: 'Computer Problem Solving',
          content: 'BCA/BTECH(Ist Sem)',
          backgroundImage: 'assets/note1.jpeg'),
      Note(
          id: 1,
          title: 'Engineering Physics',
          content: 'BTECH(Ist Sem)',
          backgroundImage: 'assets/note2.jpeg'),
      Note(
          id: 2,
          title: 'Engineering Chemistry',
          content: 'BTECH(Ist Sem)',
          backgroundImage: 'assets/note3.jpeg'),
      Note(
          id: 3,
          title: 'Engineering Mathematics',
          content: 'BTECH(Ist Sem)',
          backgroundImage: 'assets/note4.jpeg'),
      Note(
          id: 4,
          title: 'Communication Skill-I',
          content: 'BCA/BTECH(Ist Sem)',
          backgroundImage: 'assets/note5.jpeg'),
      Note(
          id: 5,
          title: 'Innovation in Computing',
          content: 'BCA/BTECH(Ist Sem)',
          backgroundImage: 'assets/note6.jpeg'),
      Note(
          id: 6,
          title: 'Biology For Engineers',
          content: "BTECH(Ist Sem)",
          backgroundImage: 'assets/note7.jpeg'),
      Note(
          id: 7,
          title: 'Relational Database Management Systems',
          content: 'BCA/BTECH(2nd Sem)',
          backgroundImage: 'assets/note8.jpeg'),
      Note(
          id: 8,
          title: 'Object Oriented Programming',
          content: 'BCA/BTECH(2nd Sem)',
          backgroundImage: 'assets/note9.jpeg'),
      Note(
          id: 9,
          title: 'Computer Organisation and Design',
          content: 'BTECH(2nd Sem)',
          backgroundImage: 'assets/note10.jpeg'),
      Note(
          id: 10,
          title: 'Fundamentals of Python',
          content: 'BCA/BTECH(2nd Sem)',
          backgroundImage: 'assets/note11.jpg'),
      Note(
          id: 11,
          title: 'Statistical Foundation of Data Science-I',
          content: 'BTECH(2nd Sem)',
          backgroundImage: 'assets/note12.jpeg'),
      Note(
          id: 12,
          title: 'Communication Skills -II',
          content: 'BCA/BTECH(2nd Sem)',
          backgroundImage: 'assets/note13.jpeg'),
      Note(
          id: 13,
          title: 'Economics for Data Science',
          content: 'BTECH(2nd Sem)',
          backgroundImage: 'assets/note14.jpeg'),
      Note(
          id: 14,
          title: 'Python for Data Science',
          content: 'BCA/BTECH(3rd Sem)',
          backgroundImage: 'assets/note15.jpeg'),
      Note(
          id: 15,
          title: 'Data Structures',
          content: 'BCA/BTECH(3rd Sem)',
          backgroundImage: 'assets/note16.jpeg'),
      Note(
          id: 16,
          title: 'Operating System',
          content: 'BCA/BTECH(3rd Sem)',
          backgroundImage: 'assets/note17.jpeg'),
      Note(
          id: 17,
          title: 'Machine Learning',
          content: 'BTECH(3rd Sem)',
          backgroundImage: 'assets/note18.jpeg'),
      Note(
          id: 18,
          title: 'Statistical Foundation of Data Science-II',
          content: 'BTECH(3rd Sem)',
          backgroundImage: 'assets/note19.jpeg'),
      Note(
          id: 19,
          title: 'Web Technologies',
          content: 'BCA/BTECH(3rd Sem)',
          backgroundImage: 'assets/note20.jpeg'),
      Note(
          id: 20,
          title: 'Fundamentals of Business Analytics',
          content: 'BTECH(3rd Sem)',
          backgroundImage: 'assets/note21.jpeg'),
      Note(
          id: 21,
          title: 'Design and Analysis of Algorithms',
          content: 'BCA/BTECH(4th Sem)',
          backgroundImage: 'assets/note22.jpeg'),
      Note(
          id: 22,
          title: 'Software Engineering',
          content: 'BCA(5th Sem)/BTECH(4th Sem)',
          backgroundImage: 'assets/note23.jpeg'),
      Note(
          id: 23,
          title: 'Advanced Machine Learning',
          content: 'BTECH(4th Sem)',
          backgroundImage: 'assets/note24.jpeg'),
      Note(
          id: 24,
          title: 'Network Programming',
          content: 'BCA(3rd Sem)Theory/BTECH(4th Sem)Practical',
          backgroundImage: 'assets/note25.jpeg'),
      Note(
          id: 25,
          title: 'Cyber Security',
          content: 'BCA(5th Sem)/BTECH(4th Sem)',
          backgroundImage: 'assets/note26.jpeg'),
      Note(
          id: 26,
          title: 'Engineering Ethics',
          content: 'BTECH(4th Sem)',
          backgroundImage: 'assets/note27.jpeg'),
      Note(
          id: 27,
          title: 'Theory of Computation',
          content: 'BTECH(5th Sem)',
          backgroundImage: 'assets/note28.jpeg'),
      Note(
          id: 28,
          title: 'Discrete Mathematics',
          content: 'BCA(4th Sem)/BTECH(5th Sem)',
          backgroundImage: 'assets/note29.jpeg'),
      Note(
          id: 29,
          title: 'Data Handling and Visualization',
          content: 'BTECH(5th Sem)',
          backgroundImage: 'assets/note30.jpeg'),
      Note(
          id: 30,
          title: 'Mobile App Development',
          content: 'BCA/BTECH(5th Sem)',
          backgroundImage: 'assets/note31.jpeg'),
      Note(
          id: 31,
          title: 'Business Intelligence',
          content: 'BTECH(5th Sem)',
          backgroundImage: 'assets/note32.jpeg'),
      Note(
          id: 32,
          title: 'R Programming',
          content: 'BTECH(5th Sem)',
          backgroundImage: 'assets/note33.jpeg'),
    ];
    filteredNotes = sampleNotes;
  }

  void onSearchTextChanged(String searchText) {
    setState(() {
      filteredNotes = sampleNotes
          .where((note) =>
              note.content.toLowerCase().contains(searchText.toLowerCase()) ||
              note.title.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 218, 151, 17),
        centerTitle: true,
        title: const Text(
          'NOTES',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextField(
              onChanged: onSearchTextChanged,
              style: const TextStyle(fontSize: 16, color: Colors.white),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
                hintText: "Search notes...",
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 250, 248, 248)),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                fillColor: Color.fromARGB(255, 138, 130, 130),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: ListView.builder(
              padding: const EdgeInsets.only(top: 30),
              itemCount: filteredNotes.length,
              itemBuilder: (context, index) {
                final note = filteredNotes[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 20),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(note.backgroundImage),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(60.0),
                      child: ListTile(
                        onTap: () async {
                          final result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => EditScreen(
                                note: filteredNotes[index],
                              ),
                            ),
                          );
                          if (result != null) {
                            setState(() {
                              int originalIndex =
                                  sampleNotes.indexOf(filteredNotes[index]);
                              sampleNotes[originalIndex] = Note(
                                id: sampleNotes[originalIndex].id,
                                title: result[0],
                                content: result[1],
                                backgroundImage: note.backgroundImage,
                              );
                              filteredNotes[index] = Note(
                                id: filteredNotes[index].id,
                                title: result[0],
                                content: result[1],
                                backgroundImage: note.backgroundImage,
                              );
                            });
                          }
                        },
                        title: RichText(
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                              text: '${filteredNotes[index].title} \n',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  height: 1.5),
                              children: [
                                TextSpan(
                                  text: filteredNotes[index].content,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      height: 1.5),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const EditScreen(),
            ),
          );

          if (result != null) {
            setState(() {
              sampleNotes.add(Note(
                id: sampleNotes.length + 1,
                title: result[0],
                content: result[1],
                backgroundImage: 'assets/note1.jpeg',
              ));
              filteredNotes = sampleNotes;
            });
          }
        },
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 218, 151, 17),
        child: const Icon(
          Icons.add,
          size: 38,
        ),
      ),
    );
  }
}

class EditScreen extends StatefulWidget {
  final Note? note;
  const EditScreen({Key? key, this.note}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();
  String _uploadedFileName = '';

  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      _titleController = TextEditingController(text: widget.note!.title);
      _contentController = TextEditingController(text: widget.note!.content);
    }
  }

  Future<void> _uploadFile() async {
    // Implement your file upload logic here
    // You can use packages like 'file_picker' or 'path_provider' to handle file selection and upload

    // Example using 'file_picker' package:
    // FilePickerResult? result = await FilePicker.platform.pickFiles();
    // if (result != null) {
    //   String fileName = result.files.single.name;
    //   // Implement your file upload logic with 'fileName'
    //   setState(() {
    //     _uploadedFileName = fileName;
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 233, 233),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Color.fromARGB(255, 218, 151, 17),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                padding: const EdgeInsets.all(0),
                icon: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade800.withOpacity(.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                ),
              ),
              centerTitle: true,
              title: const Text(
                'Edit Note',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  TextField(
                    controller: _titleController,
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Title',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
                  TextField(
                    controller: _contentController,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    maxLines: null,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type something here',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  if (_uploadedFileName.isNotEmpty)
                    Text(
                      'Uploaded File: $_uploadedFileName',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ElevatedButton(
                    onPressed: _uploadFile,
                    child: const Text(
                      'Upload File',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(
            context,
            [_titleController.text, _contentController.text],
          );
        },
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 218, 151, 17),
        child: const Icon(Icons.save),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}
