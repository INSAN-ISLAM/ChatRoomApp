import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomchatapp/App/Views/Screen/PopulaPage.dart';

import '../Widgets/AppEevatedButton.dart';
import 'CreateRoomPage.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {


  MyAlertDialog(context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(


                title:ListTile(
                  title:  Center(
                  child:  Text(" Daily Reward",
                   style: TextStyle(
                     fontSize:20,
                   ),
                  ),),
                  trailing: IconButton(onPressed: () {  Navigator.of(context).pop(); },icon: Icon( Icons.clear_rounded,)),
                ),
                content: Text(" Sign in for 7 days for rich Reward "),

                actions: [
                  Center(
                    child: Column(
                      children: [
                      Row(

                        children: [
                          Container(
                            height: 100,
                            width: 80,
                            color: Colors.grey,
                            child: Column(
                              children: [
                                Center(
                                  child: Image.asset("assets/images/Gold.png",

                                    fit: BoxFit.scaleDown,
                                    //color: Colors.white
                                  ),
                                ),
                                Text('100\$')
                              ],
                            ),

                          ),
                          SizedBox(width: 4,),
                          Container(
                            height: 100,
                            width: 80,
                            color: Colors.grey,
                            child: Column(
                              children: [
                                Center(
                                  child: Image.asset("assets/images/Gold.png",

                                    fit: BoxFit.scaleDown,
                                    //color: Colors.white
                                  ),
                                ),
                                Text('100\$')
                              ],
                            ),

                          ),
                          SizedBox(width: 4,),
                          Container(
                            height: 100,
                            width: 80,
                            color: Colors.grey,
                            child: Column(
                              children: [
                                Center(
                                  child: Image.asset("assets/images/Gold.png",

                                    fit: BoxFit.scaleDown,
                                    //color: Colors.white
                                  ),
                                ),
                                Text('100\$')
                              ],
                            ),

                          ),
                          // Container(
                          //   height: 80,
                          //   width: 100,
                          //   color: Colors.green,
                          //
                          // ),
                        //
                        ],
                      ),
                        SizedBox(height: 4,),
                      Row(

                        children: [
                          Container(
                            height: 100,
                            width: 80,
                            color: Colors.grey,
                            child: Column(
                              children: [
                                Center(
                                  child: Image.asset("assets/images/Gold.png",

                                    fit: BoxFit.scaleDown,
                                    //color: Colors.white
                                  ),
                                ),
                                Text('100\$')
                              ],
                            ),

                          ),
                          SizedBox(width: 4,),
                          Container(
                            height: 100,
                            width: 80,
                            color: Colors.grey,
                            child: Column(
                              children: [
                                Center(
                                  child: Image.asset("assets/images/Gold.png",

                                    fit: BoxFit.scaleDown,
                                    //color: Colors.white
                                  ),
                                ),
                                Text('100\$')
                              ],
                            ),

                          ),
                          SizedBox(width: 4,),
                          Container(
                            height: 100,
                            width: 80,
                            color: Colors.grey,
                            child: Column(
                              children: [
                                Center(
                                  child: Image.asset("assets/images/Gold.png",

                                    fit: BoxFit.scaleDown,
                                    //color: Colors.white
                                  ),
                                ),
                                Text('100\$')
                              ],
                            ),

                          ),
                          // Container(
                          //   height: 80,
                          //   width: 100,
                          //   color: Colors.green,
                          //
                          // ),
                        //
                        ],
                      ),

                        // TextButton(
                        //     onPressed: () {
                        //       // MySnackBar("Thanks", context);
                        //       // Navigator.of(context).pop();
                        //     },
                        //     child: Text("No")),
                        SizedBox(height: 5),
                        AppElevatedButton(
                          Color: Colors.grey,
                          onTap: () {
                            // Navigator.of(context).pop();
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => const MainBottomNavBar()));
                          },
                          child: Center(
                            child: Text(
                              "Sign in today",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  //fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ));
        });
  }
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          flexibleSpace: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                indicatorColor: Colors.white, // Indicator color for selected tab
                labelColor: Colors.white, // Color for selected tab text
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'Mine',
                  ),
                  Tab(
                    text: 'Popular',
                  ),
                ],
              )
            ],  ),
        ),
        body: TabBarView(
          children: [
             CreateRoomScreen(),
               PopularScreen(),


          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          elevation: 10,
          label: Icon(Icons.add) ,
          backgroundColor: Colors.green,
          onPressed: (){
           // MySnackBar("I am floating action button",context);
            MyAlertDialog(context);
          },
        ),
      ),
    );



  }
}
