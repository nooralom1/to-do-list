
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/custom_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dailly Notes"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (c, i) {
              return Card(
                child: SizedBox(
                  height: 100,
                  width: MediaQuery.of(c).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextWidget(tittle: "Tittle"),
                      SizedBox(
                        height: 7,
                      ),
                      TextWidget(tittle: "Description")
                    ],
                  ),
                ),
                color: Colors.green,
              );
            }),
        floatingActionButton: InkWell(
          onTap: () {},
          child: CircleAvatar(
            radius: 30,
            child: Icon(Icons.add),
          ),
        ));
  }
}


