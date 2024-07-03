import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/AppEevatedButton.dart';

class TeamPkScreen extends StatefulWidget {
  const TeamPkScreen({Key? key}) : super(key: key);

  @override
  State<TeamPkScreen> createState() => _TeamPkScreenState();
}

class _TeamPkScreenState extends State<TeamPkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 130,
                        //width:double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 45,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 24,
                                      child: InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      // backgroundImage: AssetImage('assets/images/messi.jpg'),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 24,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                fontSize: 30,
                                              ),
                                            ),
                                          ),
                                          // backgroundImage: AssetImage('assets/images/messi.jpg'),
                                        ),
                                        CircleAvatar(
                                          radius: 24,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                fontSize: 30,
                                              ),
                                            ),
                                          ),
                                          // backgroundImage: AssetImage('assets/images/messi.jpg'),
                                        ),
                                        CircleAvatar(
                                          radius: 24,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                fontSize: 30,
                                              ),
                                            ),
                                          ),
                                          // backgroundImage: AssetImage('assets/images/messi.jpg'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 15,
                                child: Column(
                                  children: [
                                    Text('Pk 10.00m'),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 45,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      child: InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                            fontSize: 30,
                                          ),
                                        ),
                                      ),
                                      // backgroundImage: AssetImage('assets/images/messi.jpg'),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 25,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                fontSize: 30,
                                              ),
                                            ),
                                          ),
                                          // backgroundImage: AssetImage('assets/images/messi.jpg'),
                                        ),
                                        CircleAvatar(
                                          radius: 25,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                fontSize: 30,
                                              ),
                                            ),
                                          ),
                                          // backgroundImage: AssetImage('assets/images/messi.jpg'),
                                        ),
                                        CircleAvatar(
                                          radius: 25,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                fontSize: 30,
                                              ),
                                            ),
                                          ),
                                          // backgroundImage: AssetImage('assets/images/messi.jpg'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppElevatedButton(
                  Color: Colors.deepOrangeAccent,
                  onTap: () async {
                    // if (_formKey.currentState!.validate()) {
                    //   // Navigator.push(
                    //   //     context,
                    //   //     MaterialPageRoute(
                    //   //         builder: (context) => MainBottomNavBar()));
                    //
                    //
                    // }
                    MyAlertDialog(context);
                  },
                  child: Center(
                    child: Text(
                      "Star Pk",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                          //fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height:500,
                      //width:double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      //borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'A',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'Or',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'B',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'Pick your Team',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6,),
                            Row(
                              children: [
                                Expanded(
                                  flex: 45,
                                  child: Container(
                                    height: 370,
                                    // width:,
                                    decoration: BoxDecoration(
                                        color: Colors.cyan,
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                          //     builder: (context) => ClassicScreen()), (route) => true);
                                        },
                                        child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 18,),
                                            CircleAvatar(
                                              radius:25,
                                              child: InkWell(
                                                onTap: () {},
                                                child: Text(
                                                  "+",
                                                  style: TextStyle(
                                                    fontSize: 30,
                                                  ),
                                                ),
                                              ),
                                              // backgroundImage: AssetImage('assets/images/messi.jpg'),
                                            ),
                                            SizedBox(height: 6,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.person),
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.person),
                                                    Icon(Icons.person),
                                                    Icon(Icons.person),

                                                  ],
                                                ),

                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2,),
                                Expanded(
                                    flex: 10,
                                    child: Text(
                                      'PK',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.green,
                                      ),
                                    )),
                                Expanded(
                                  flex: 45,
                                  child: Container(
                                    height: 370,
                                    // width:,
                                    decoration: BoxDecoration(
                                        color: Colors.cyan,
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                          //     builder: (context) => ClassicScreen()), (route) => true);
                                        },
                                        child:Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 18,),
                                            CircleAvatar(
                                              radius:25,
                                              child: InkWell(
                                                onTap: () {},
                                                child: Text(
                                                  "+",
                                                  style: TextStyle(
                                                    fontSize: 30,
                                                  ),
                                                ),
                                              ),
                                              // backgroundImage: AssetImage('assets/images/messi.jpg'),
                                            ),
                                            SizedBox(height: 6,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.person),
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.person),
                                                    Icon(Icons.person),
                                                    Icon(Icons.person),

                                                  ],
                                                ),

                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  MyAlertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text("End Pk Now?"),
                content: Text("Do you want to Close"),
                actions: [
                  TextButton(onPressed: (){

                    Navigator.of(context).pop();
                  }, child: Text("Cencel")),
                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Close")),
                ],
              )
          );
        }
    );
  }


}
