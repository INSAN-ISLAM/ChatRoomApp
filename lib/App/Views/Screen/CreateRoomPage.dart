import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/AppEevatedButton.dart';
import '../Widgets/AppTextField.dart';
import 'LiveFollowPage.dart';
import 'RecentlyViewPage.dart';

class CreateRoomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 5,
                child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: const CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/Phone.png'),
                            ),
                            title: Column(
                              children: [
                                Text("Create Your Room"),
                                Text(
                                  "Start Your live joureny on hapi!",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            trailing: SizedBox(
                              height: 25,
                              width: 30,
                              child: AppElevatedButton(
                                Color: Colors.green,
                                onTap: () {
                                  //   Navigator.of(context).pop();
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) =>  LogInScreen()));
                                },
                                child: Center(
                                  child: Text(
                                    "+",
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
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            Container(
              color: Colors.black12, // Background color for TabBar
              child: TabBar(
                indicatorColor: Colors.teal, // Indicator color for selected tab
                labelColor: Colors.teal, // Color for selected tab text
                unselectedLabelColor:
                    Colors.black, // Color for unselected tab text
                tabs: [
                  Tab(text: 'Recently'),
                  Tab(text: 'Follow'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: RecentlyScreen()),
                  Center(child: LiveFollScreen()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

