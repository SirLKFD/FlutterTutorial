import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {

  // Class is a widget/component....

  WidgetsFlutterBinding.ensureInitialized(); // Ensure the binding is initialized

  runApp(MaterialApp(
    home: NinjaCard(), // Home is a Stateless Widget
  ));
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      appBar: AppBar(
        title: Text("LKFD Flutter", style: GoogleFonts.ptSans(
          color: Colors.white,
          letterSpacing: 5.0,
        )),

        centerTitle: true,
        backgroundColor: Colors.black,

      ),

        body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/seed/picsum/200/300'),
                radius: 130,
              ),
            ),
            Divider(
              height: 60,
              thickness: 3,
              color: Colors.white,
            ),
            Text(
              'NAME',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 10), // Add space between the text
            Text(
              'Lord Kent F. Dinampo',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'CURRENT STATUS',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 10), // Add space between the text
            Text(
              'LEVEL: 8',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10),
                Text(
                  "lordkentdinampo@gmail.com",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.grey[400],
                      letterSpacing: 1.0,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            )
          ],
        )
    )

    );
  }
}

