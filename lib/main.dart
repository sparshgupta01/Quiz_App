import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'questionslist.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
List<Icon> answer = [];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SafeArea(child: Uidesign()));
  }
}

class Uidesign extends StatefulWidget {
  const Uidesign({super.key});
  @override
  State<Uidesign> createState() => UidesignState();
}
int answerno=0;
class UidesignState extends State<Uidesign> {

  qlist ab=qlist();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(254, 210, 181, 1),
        appBar: AppBar(
          title: Center(
              child: Text("Quiz",
                  style: GoogleFonts.dancingScript(
                      color: Color.fromRGBO(102, 51, 0, 1),
                      fontWeight: FontWeight.w900,
                      fontSize: 35))),
          backgroundColor: Color.fromRGBO(224, 182, 157, 1),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Center(child: Text(ab.textgiven(answerno),textAlign: TextAlign.center,)),
              ),
              flex: 5,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        ab.next_question(answerno,true, context);
                      });
                    },
                    child: Card(
                      child: Center(
                          child: Text("True",
                              style: GoogleFonts.gluten(fontSize: 20,  color: Colors.white),)),
                      elevation: 15,
                      color: Color.fromRGBO(102, 51, 0, 1),
                    )),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        ab.next_question(answerno,false, context);
                      });
                    },
                    child: Card(
                        child: Center(
                            child: Text(
                          "False",
                          style: GoogleFonts.gluten(fontSize: 20,  color: Colors.white),
                        )),
                        elevation: 15,
                        color: Color.fromRGBO(102, 51, 0, 1))),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SingleChildScrollView(child: Row(children: answer,),scrollDirection: Axis.horizontal,)
          ],
        ));
  }

}
