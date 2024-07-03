import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/AppEevatedButton.dart';
import '../Widgets/AppTextField.dart';
import 'TeamPkPage.dart';

class VoiceRoomCustomizeScreen extends StatefulWidget {
  const VoiceRoomCustomizeScreen({Key? key}) : super(key: key);

  @override
  State<VoiceRoomCustomizeScreen> createState() =>
      _VoiceRoomCustomizeScreenState();
}

class _VoiceRoomCustomizeScreenState extends State<VoiceRoomCustomizeScreen> {
  showChangeTeamStatus() {
    //String statusValue = currentStatus;
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return DefaultTabController(
            length: 2, // Number of tabs
            child: Column(
              children: [
                Text("Team pk"),
                SizedBox(
                  height: 5,
                ),
                Text("please select your team size"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
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
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.person),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.person),
                                        Icon(Icons.person),
                                        Icon(Icons.person),
                                      ],
                                    ),
                                  ],
                                ),
                                Text('Vs'),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.person),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 80,
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
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.person),
                                        Icon(Icons.person),
                                        Icon(Icons.person),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.person),
                                        Icon(Icons.person),
                                        Icon(Icons.person),
                                      ],
                                    ),
                                  ],
                                ),
                                Text('Vs'),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.person),
                                        Icon(Icons.person),
                                        Icon(Icons.person),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                    ],
                  ),
                ),
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppTextFieldWidget(
                      //obscureText: m,
                      hintText: 'Time',

                      controller: _passwordETController,
                      suffixIcon: Text('10m'),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 48,
                      width: 358,
                      child: AppElevatedButton(
                        Color: Colors.deepOrangeAccent,
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TeamPkScreen()),
                              (route) => true);
                        },
                        child: Center(
                          child: Text(
                            "Start Pk",
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
                    // const SizedBox(
                    //   height: 14,
                    // ),
                    // Center(
                    //   child: TextButton(
                    //     onPressed: () {},
                    //     child: Text(
                    //       'Forgot Password?',
                    //       style: GoogleFonts.poppins(
                    //         textStyle: TextStyle(
                    //           color: Color(0xFFEF232F),
                    //           fontSize: 14,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  showChangeRoomStatus() {
    //String statusValue = currentStatus;
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return DefaultTabController(
            length: 2, // Number of tabs
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Text("Room pk"),
                SizedBox(
                  height: 5,
                ),
                Text(" Select a Mode & Pk To Win Reward "),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 80,
                              // width:,
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                      child: Text(
                                    'Quick Match',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                  Center(
                                      child: Text(
                                    'Pk Against A random Room',
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 80,
                              // width:,
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                      child: Text(
                                    'Invite Room',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                  Center(
                                      child: Text(
                                    'Invite Your Friends Room To Pk',
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  final TextEditingController _emailETController = TextEditingController();
  final TextEditingController _passwordETController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool m = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('VoiceRoomCustomizeScreen'),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Room Mode'),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: InkWell(
                          onTap: () {
                            showChangeTeamStatus();
                          },
                          child: Text('Team Pk')),
                      // backgroundImage:AssetImage('assets/images/messi.jpg'),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    CircleAvatar(
                      radius: 40,
                      child: InkWell(
                          onTap: () {
                            showChangeRoomStatus();
                          },
                          child: Text('Room Pk')),
                      // backgroundImage:AssetImage('assets/images/messi.jpg'),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Room Setting'),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Text('Music'),
                      // backgroundImage:AssetImage('assets/images/messi.jpg'),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    CircleAvatar(
                      radius: 40,
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BackgroundScreen()));
                            // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                            //     builder: (context) =>  const BackgroundScreen()), (route) => true);
                          },
                          child: Text('Decers')),
                      // backgroundImage:AssetImage('assets/images/messi.jpg'),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    CircleAvatar(
                      radius: 40,
                      child: Text('Annuoncement'),
                      // backgroundImage:AssetImage('assets/images/messi.jpg'),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BackgroundScreen extends StatefulWidget {
  const BackgroundScreen({Key? key}) : super(key: key);

  @override
  State<BackgroundScreen> createState() => _BackgroundScreenState();
}

class _BackgroundScreenState extends State<BackgroundScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Decer'),
        ),
        body: Row(
          children: [

            Container(

        height: 60,
        width: 170,
                child: ElevatedButton(onPressed: (){}, child:  Text('Background'),)),

            SizedBox(width: 5,),
            Container(

        height: 60,
        width: 170,
                child: ElevatedButton(onPressed: (){}, child:  Text('Decer'),))
          ],
        ),
      ),
    );
  }
}
