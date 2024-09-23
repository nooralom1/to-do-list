import 'package:flutter/material.dart';
import 'package:notes_app/views/common_widgets/custom_text.dart';

class CustomNodeCard extends StatelessWidget {
  final String tittle;
  final String description;
  final Color? bgColor;
  const CustomNodeCard({
    super.key,
    required this.tittle,
    required this.description,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      child: SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                tittle: tittle,
                tSize: 25,
                tColor: Colors.white,
                tWeight: FontWeight.w400,
              ),
              TextWidget(
                tittle: description,
                tColor: Colors.white,
                tSize: 17,
              )
            ],
          ),
        ),
      ),
    );
  }
}
