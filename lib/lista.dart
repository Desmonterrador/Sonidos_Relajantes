import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class lista extends StatefulWidget {
  const lista({super.key});

  @override
  State<lista> createState() => _listaState();
}

class _listaState extends State<lista> {
  List<String> itemList = [];
  TextEditingController itemController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      itemList = prefs.getStringList('items') ?? [];
    });
  }

  Future<void> saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('items', itemList);
  }

  void addItem(String item) {
    setState(() {
      itemList.add(item);
      itemController.clear();
      saveData();
    });
  }

  void removeItem(String item) {
    setState(() {
      itemList.remove(item);
      saveData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SUGERENCIAS"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: itemController,
              decoration: InputDecoration(
                labelText: 'Agrega una sugerencia de sonido para la app',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              addItem(itemController.text);
            },
            child: Text("Agregar"),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: itemList.length,
            itemBuilder: (BuildContext context, int index) {
              final item = itemList[index];
              return ListTile(
                title: Text(item),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    removeItem(item);
                  },
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
