import 'package:flutter/material.dart';

import '../Widgets/ProfilePage.dart';


class MeScreen extends StatefulWidget {
  const MeScreen({Key? key}) : super(key: key);

  @override
  State<MeScreen> createState() => _MeScreenState();
}

class _MeScreenState extends State<MeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child:Column(
              children: [
                UserProfileWidget(),

                Container(
                  height: 80,
                  color: Colors.black12, // Background color for TabBar
                  child: Row(
                    children: [
                      Expanded(
                        flex: 30,
                        child: InkWell(
                          onTap: (){},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('10'),
                              Text('Following'),
                            ],

                          ),
                        ),
                      ),
                      Expanded(
                        flex: 30,
                        child: InkWell(
                          onTap: (){},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('4'),
                              Text('Follows'),
                            ],

                          ),
                        ),
                      ),
                      Expanded(
                        flex: 30,
                        child: InkWell(
                          onTap: (){},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('10'),
                              Text('Visitor'),
                            ],

                          ),
                        ),
                      ),



                    ],


                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(
                    elevation: 6,
                    child: Container(
                      height: 410,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          // ListTile(
                          //   iconColor: Colors.black,
                          //   trailing: Icon(Icons.arrow_forward_ios),
                          //   title: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       Text(
                          //         'SUPPORT',
                          //         style: TextStyle(
                          //           color: Colors.black,
                          //           fontWeight: FontWeight.w600,
                          //           fontSize: 10,
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         height: 5,
                          //       ),
                          //       Text(
                          //         'Magnum Cares',
                          //         style: TextStyle(
                          //           color: Colors.black,
                          //           fontWeight: FontWeight.w600,
                          //           fontSize: 10,
                          //         ),
                          //       ),
                          //
                          //     ],
                          //   ),
                          // ),
                          ListTile(
                            iconColor: Colors.black,
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(Icons.account_balance_wallet),
                            title: Text(
                              'Wallet ',

                            ),
                          ),
                          ListTile(
                            iconColor: Colors.black,
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(Icons.account_balance_wallet),
                            title: Text(
                              'Invite Friend ',
                            ),
                          ),
                          ListTile(
                            iconColor: Colors.black,
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(Icons.account_balance_wallet),
                            title: Text(
                              'SVIP ',

                            ),
                          ),
                          ListTile(
                            iconColor: Colors.black,
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(Icons.account_balance_wallet),
                            title: Text(
                              'Model ',

                            ),
                          ),
                          ListTile(
                            iconColor: Colors.black,
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(Icons.account_balance_wallet),
                            title: Text(
                              'Level ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          ListTile(
                            iconColor: Colors.black,
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(Icons.account_balance_wallet),
                            title: Text(
                              'CP ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          ListTile(
                            iconColor: Colors.black,
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(Icons.account_balance_wallet),
                            title: Text(
                              'Store ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          ListTile(
                            iconColor: Colors.black,
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(Icons.account_balance_wallet),
                            title: Text(
                              'My Items ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(
                    elevation: 6,
                    child: Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          ListTile(
                            iconColor: Colors.black,
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(Icons.mail),
                            title: Text(
                              'Feedback ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          ListTile(
                            iconColor: Colors.black,
                            leading:Icon(Icons.settings),
                            trailing: Icon(Icons.arrow_forward_ios),
                            title: Text(
                              'Setteing ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          ListTile(
                            iconColor: Colors.black,
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(Icons.ac_unit),
                            title: Text(
                              'Change Language',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ),
              ],
        )


            ),
          ),

    );
  }
}
