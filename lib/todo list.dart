import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestPage(),
    );
  }
}

List todolist = [
  {"name": "Communication Systems Quiz", "Time": "10:00 AM"},
  {"name": "OS Report", "Time": "11:00 AM"},
  {"name": "Buy some stuff", "Time": "1:00 PM"},
  {"name": "Go to the Gym", "Time": "2:00 PM"},
  {"name": "Flutter Task", "Time": "4:00 PM"},
  {"name": "Flutter Task بردو", "Time": "6:00 AM"},
];

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: const Text(
            "Todo List",
            style: TextStyle(fontSize: 25, color: Colors.white),
          )),
      body: Container(
        color: Colors.blueAccent,
        child: ListView.builder(
            itemCount: todolist.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(
                  "${todolist[i]["name"]}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "${todolist[i]["Time"]}",
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                trailing: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Delete"),
                              content: const Text(
                                "Are you sure you want to delete this item?",
                                style: TextStyle(fontSize: 18),
                              ),
                              actions: [
                                MaterialButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Yes",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 18),
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                    child: const Icon(
                      Icons.delete_outline_outlined,
                      color: Colors.white,
                      size: 25,
                    )),
              );
            }),
      ),
    );
  }
}
