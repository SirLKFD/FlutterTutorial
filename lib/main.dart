import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {

  // Class is a widget....

  WidgetsFlutterBinding.ensureInitialized(); // Ensure the binding is initialized

  runApp(MaterialApp(

    home: Home(), // Home is a Stateless Widget
  ));
}



// Useful for Hot Reload and make the widget reusable
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("LKFD Flutter"),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello World"),
          TextButton(
            onPressed: () {},
            child: Text("Click Me"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.amberAccent, // Background color

            ),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30),
            child: Text("Inside Container"),
          )
        ],
      ),



      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Press"),
        backgroundColor: Colors.blue[100],
      ),
    );



  }
}
