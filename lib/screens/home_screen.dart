import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_veryy_first_app/widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var numero = 0;

  void incrementNumber(){
    setState(() {
      numero++;
    });
  }



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: Colors.orange,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             Center(
              child: Text(
                numero.toString(),
                style: GoogleFonts.acme(fontSize: 32),
              ),
            ),
            Center(
              child: CustomButton("Press me", onPress: incrementNumber)
            ),
          ],
        ));
  }
}
