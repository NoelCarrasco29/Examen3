import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextInputType keyboardType;
  final IconData icono;
  final String placeHolder;
  final TextEditingController textController;
  const CustomInput(
      {Key? key,
      this.keyboardType = TextInputType.text,
      required this.icono,
      required this.placeHolder,
      required this.textController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 5),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: textController,
        autocorrect: false,
        keyboardType: keyboardType,
        //remplazar el texto por asteriscos
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            prefixIcon: Icon(
              icono,
              color: Colors.black,
            ),
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintText: placeHolder,
            hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
      ),
    );
  }
}
