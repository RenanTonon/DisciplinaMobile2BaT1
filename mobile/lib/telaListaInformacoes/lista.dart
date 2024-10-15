import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Item> items = [];
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _valorController = TextEditingController();
  

  void _addItem() {
    if (_nameController.text.isNotEmpty) {
      setState(() {
        items.add(Item(
          name: _nameController.text,
          description: _valorController.text,
         
        ));
        _nameController.clear();
        _valorController.clear();
       
      });
    }
  }

  void _editItem(int index) {
    _nameController.text = items[index].name;
    _valorController.text = items[index].description;
    

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Editar Informação'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Usuário'),
              ),
              TextField(
                controller: _valorController,
                decoration: InputDecoration(labelText: 'Valor'),
              ),
             
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  items[index] = Item(
                    name: _nameController.text,
                    description: _valorController.text,
                    
                  );
                  _nameController.clear();
                  _valorController.clear();
                 
                });
                Navigator.of(context).pop();
              },
              child: Text('Salvar'),
            ),
          ],
        );
      },
    );
  }

  void _deleteItem(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Excluir Informação'),
          content: Text('Cuidado você irá excluir permanentemente esse item, tem certeza?'),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  items.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: Text('Sim'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Não'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Informações'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Usuário'),
                ),
                TextField(
                  controller: _valorController,
                  decoration: InputDecoration(labelText: 'Valor'),
                ),
                
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _addItem,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index].name),
                  subtitle: Text('Saldo: ${items[index].description}\n'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () => _editItem(index),
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => _deleteItem(index),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
class Item {
  String name;
  String description;
  

  Item({
    required this.name,
    required this.description,
  
  });
}
