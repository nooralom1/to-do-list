import 'package:flutter/material.dart';
import 'package:notes_app/database/node_database.dart';
import 'package:notes_app/models/node_model.dart';
import 'package:notes_app/views/common_widgets/custom_text.dart';
import 'package:notes_app/views/screens/home/widgets/custom_node_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dailly Notes"),
        centerTitle: true,
      ),
      body: NodeData.nodeData.isEmpty
          ? const Center(child: TextWidget(tittle: "Emty Notes",tSize: 22,))
          : ListView.builder(
              itemCount: NodeData.nodeData.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onDoubleTap: () {
                    NodeData.nodeData.removeAt(index);
                    setState(() {});
                  },
                  child: CustomNodeCard(
                    tittle: NodeData.nodeData[index].tittle,
                    description: NodeData.nodeData[index].description,
                  ),
                );
              },
            ),
      floatingActionButton: InkWell(
        onTap: () {
          var data =
              NodeModel(tittle: "title : $i", description: "description");
          NodeData.nodeData.add(data);
          i++;
          setState(() {});
        },
        child: const CircleAvatar(
          radius: 30,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
