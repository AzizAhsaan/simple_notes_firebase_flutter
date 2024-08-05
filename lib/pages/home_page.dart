import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:simple_crud_firebase/services/firestore.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirestoreService firestoreService = FirestoreService();
  //text controller
  final TextEditingController textController = TextEditingController();

  void openNoteBox({String? docID, String? noteText}) {
    if (noteText != null) {
      textController.text = noteText;
    } else {
      textController.clear();
    }
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              //text user input
              content: TextField(
                controller: textController,
              ),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      if (docID == null) {
                        firestoreService.addNote(textController.text);
                      } else {
                        firestoreService.updateNote(docID, textController.text);
                      }
                      textController.clear();
                      Navigator.pop(context);
                    },
                    child: Text("Add"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notes")),
      floatingActionButton: FloatingActionButton(
        onPressed: openNoteBox,
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreService.getNotesStream(),
        builder: (context, snapshot) {
          //if we have data,get all the docs
          if (snapshot.hasData) {
            List notesList = snapshot.data!.docs;

            //display as a list
            return ListView.builder(
                itemCount: notesList.length,
                itemBuilder: (context, index) {
                  //get each individual doc
                  DocumentSnapshot document = notesList[index];
                  String docID = document.id;

                  //get note from each doc

                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;

                  String noteText = data['note'];

                  //display as a list tile

                  return ListTile(
                    title: Text(noteText),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.settings),
                          onPressed: () =>
                              openNoteBox(docID: docID, noteText: noteText),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => firestoreService.deleteNote(docID),
                        ),
                      ],
                    ),
                  );
                });
          } else {
            return const Text("There is no data");
          }
        },
      ),
    );
  }
}
