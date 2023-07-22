import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
const CustomButton( this.buttonLabel, { Key? key, required this.onPress }) : super(key: key);
final String buttonLabel;
final void Function() onPress;
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
                onPressed: onPress,
                child:  Text(buttonLabel),
              );
  }
}