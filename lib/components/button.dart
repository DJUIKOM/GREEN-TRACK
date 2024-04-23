import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomButon extends StatefulWidget {
  const CustomButon({super.key, required this.onPress, required this.title, required this.color});
  final VoidCallback onPress;
  final String title;
  final Color color;

  @override
  State<CustomButon> createState() => _CustomButonState();
}

class _CustomButonState extends State<CustomButon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8.0), // Ajoute un padding de 8.0

              child: ElevatedButton(
                onPressed: widget.onPress,
                style: ElevatedButton.styleFrom(backgroundColor: widget.color,
                  padding: EdgeInsets.all(20),

                ),
                child: Text(widget.title),
              )
              ,
            ),
          ),

        ],
      ),
    );
  }
}
