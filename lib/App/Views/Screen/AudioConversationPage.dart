//import 'dart:js';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constant/ConstantValue.dart';
import '../Widgets/AppEevatedButton.dart';
import 'LiveFollowPage.dart';
import 'NavigationBar.dart';
import 'RecentlyViewPage.dart';
import 'RoomManamentCenterPage.dart';
import 'VoiceRoomCustomize.dart';

class AudioConversationScreen extends StatefulWidget {
  const AudioConversationScreen({Key? key}) : super(key: key);

  @override
  State<AudioConversationScreen> createState() =>
      _AudioConversationScreenState();
}

class _AudioConversationScreenState extends State<AudioConversationScreen> {
  final ValueNotifier<int> _currentCarouselIndex = ValueNotifier(0);




  showChangeTaskStatus() {
    //String statusValue = currentStatus;
    showModalBottomSheet( context: context, builder: (context){

      return DefaultTabController(
          length: 3, // Number of tabs
          child: Column(
        children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Level-1 L1"),
            ),

          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment:  CrossAxisAlignment.start,
                    children: [
                      // IconButton(onPressed: (){
                      //
                      //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                      //       builder: (context) => SettingScreen()), (route) => true);},
                      //   icon: Icon(Icons.settings),
                      // ),
                      const Text(" level    L2",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange,

                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex:10,

                            child: Image.asset(
                              'assets/images/messi.jpg',
                              height: 90,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            flex: 20,
                            child: ListTile(
                              title:Text("Group Name") ,
                              subtitle:Text("Suptitle Name")  ,
                              trailing:IconButton(onPressed: (){}, icon: Icon(Icons.login)) ,

                            ),
                          )

                        ],

                      ),

                      SizedBox(
                        height: 15,
                      ),

                      Text("Super member")  ,

                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,

                      backgroundImage:AssetImage('assets/images/messi.jpg'),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(
                      radius: 20,

                      backgroundImage:AssetImage('assets/images/messi.jpg'),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(
                      radius: 20,

                      backgroundImage:AssetImage('assets/images/messi.jpg'),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(
                      radius: 20,

                      backgroundImage:AssetImage('assets/images/messi.jpg'),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(
                      radius: 20,

                      backgroundImage:AssetImage('assets/images/messi.jpg'),
                    ),

                  ],
                ),


                    ],
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
                Tab(text: 'Profile'),
                Tab(text: 'Event'),
                Tab(text: 'Member'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(child: ProfileScreen()),
                Center(child: EventScreen()),
                Center(child: LiveFollScreen()),
              ],
            ),
          ),
        ],


      ),






      );

    }


    );

  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(

          onTap: (){

            showChangeTaskStatus();
          },
            child: Text("Sakib al hasan")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))
        ],
        leading: Image.asset(
          'assets/images/messi.jpg',
          height: 120,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                flex:10,
                child: CircleAvatar(
                  radius: 30,

                  backgroundImage:AssetImage('assets/images/messi.jpg'),
                ), ),
            Expanded(
              flex: 50,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, // Number of columns
                  crossAxisSpacing: 5.0, // Horizontal spacing
                  mainAxisSpacing: 15.0, // Vertical spacing
                ),
                itemCount: 10, // Total number of items
                itemBuilder: (context, index) {
                  return Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: InkWell(
                              onTap: (){


                              },
                              child: Icon(Icons.lock)),
                         // backgroundImage: AssetImage('assets/images/messi.jpg'),
                        ),
                        Text("No.${index + 1}")
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
                flex: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                        flex: 60,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Icon(Icons.lock),
                              // backgroundImage: AssetImage('assets/images/messi.jpg'),
                            ),
                            SizedBox(width: 4,),
                            Text("Hi..."),
                          ],
                        )),
                    Expanded(
                        flex: 35,child: Column(
                          children: [

                            InkWell(
                              onTap: (){



                              },
                              child: Expanded(
                                flex: 30,
                                child: Card(
                                  child: Container(
                                    width: 120,
                                    child: CarouselSlider(
                                      options: CarouselOptions(
                                          scrollDirection: Axis.vertical,
                                          height: 100.0,
                                          viewportFraction: 1,
                                          autoPlayInterval: Duration(seconds: 2),
                                          autoPlay: true,
                                          onPageChanged: (index, _) {
                                            _currentCarouselIndex.value = index;
                                          }),
                                      items: [1, 2, 3, 4, 5, 6,].map((i) {
                                        return Builder(
                                          builder: (BuildContext context) {
                                            return Container(
                                                width: MediaQuery.of(context).size.width,
                                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(12),
                                                    color: Colors.amber),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'text $i',
                                                  style: TextStyle(fontSize: 16.0),
                                                ));
                                          },
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            ValueListenableBuilder(
                                valueListenable: _currentCarouselIndex,
                                builder: (context, currentValue, _) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      for (int i = 0; i < 6; i++)
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                color: currentValue == i
                                                    ? blackColor
                                                    : softGreyColor,
                                                border: Border.all(
                                                    color: greyColor.withOpacity(0.5)),
                                                borderRadius: BorderRadius.circular(10)),
                                          ),
                                        )
                                    ],
                                  );
                                }),

                          ],
                        )),
                  ],
                )),

                  Expanded(
                   flex: 15,
                   child: Row(
                     children: [
                       Expanded(
                         flex: 20,
                           child: Icon(Icons.speaker)),
                       Expanded(flex: 20, child: Row(
                         children: [
                           Icon(Icons.messenger),
                           Text('Say hi..')
                         ],
                       )),
                       Expanded(flex: 20, child:Icon(Icons.mail)),

                       Expanded(
                           flex: 20,
                           child:IconButton(onPressed: (){


                             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                 builder: (context) =>  const VoiceRoomCustomizeScreen()), (route) => true);
                           },

                               icon: Icon(Icons.wallet_giftcard))
                       
                       ),
                       Expanded(
                           flex: 20,
                           
                           child: Icon(Icons.dataset)),


                     ],
                   ),
                 ),

          ],
        ),
      ),
    );
  }
}




class AudioConversation1Screen extends StatefulWidget {
  const AudioConversation1Screen({Key? key}) : super(key: key);

  @override
  State<AudioConversation1Screen> createState() =>
      _AudioConversation1ScreenState();
}

class _AudioConversation1ScreenState extends State<AudioConversation1Screen> {
  final ValueNotifier<int> _currentCarouselIndex = ValueNotifier(0);




  showChangeTaskStatus() {
    //String statusValue = currentStatus;
    showModalBottomSheet( context: context, builder: (context){

      return DefaultTabController(
        length: 3, // Number of tabs
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Level-1 L1"),
            ),

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children: [
                        // IconButton(onPressed: (){
                        //
                        //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        //       builder: (context) => SettingScreen()), (route) => true);},
                        //   icon: Icon(Icons.settings),
                        // ),
                        const Text(" level    L2",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,

                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex:10,

                              child: Image.asset(
                                'assets/images/messi.jpg',
                                height: 90,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              flex: 20,
                              child: ListTile(
                                title:Text("Group Name") ,
                                subtitle:Text("Suptitle Name")  ,
                                trailing:IconButton(onPressed: (){}, icon: Icon(Icons.login)) ,

                              ),
                            )

                          ],

                        ),

                        SizedBox(
                          height: 15,
                        ),

                        Text("Super member")  ,

                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,

                              backgroundImage:AssetImage('assets/images/messi.jpg'),
                            ),
                            SizedBox(width: 5,),
                            CircleAvatar(
                              radius: 20,

                              backgroundImage:AssetImage('assets/images/messi.jpg'),
                            ),
                            SizedBox(width: 5,),
                            CircleAvatar(
                              radius: 20,

                              backgroundImage:AssetImage('assets/images/messi.jpg'),
                            ),
                            SizedBox(width: 5,),
                            CircleAvatar(
                              radius: 20,

                              backgroundImage:AssetImage('assets/images/messi.jpg'),
                            ),
                            SizedBox(width: 5,),
                            CircleAvatar(
                              radius: 20,

                              backgroundImage:AssetImage('assets/images/messi.jpg'),
                            ),

                          ],
                        ),


                      ],
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
                  Tab(text: 'Profile'),
                  Tab(text: 'Event'),
                  Tab(text: 'Member'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: ProfileScreen()),
                  Center(child: EventScreen()),
                  Center(child: LiveFollScreen()),
                ],
              ),
            ),
          ],


        ),






      );

    }


    );

  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(

            onTap: (){

              showChangeTaskStatus();
            },
            child: Text("Sakib al hasan")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))
        ],
        leading: Image.asset(
          'assets/images/messi.jpg',
          height: 120,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex:10,
              child: CircleAvatar(
                radius: 30,

                backgroundImage:AssetImage('assets/images/messi.jpg'),
              ), ),
            Expanded(
              flex: 50,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, // Number of columns
                  crossAxisSpacing: 5.0, // Horizontal spacing
                  mainAxisSpacing: 15.0, // Vertical spacing
                ),
                itemCount: 15, // Total number of items
                itemBuilder: (context, index) {
                  return Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: InkWell(
                              onTap: (){


                              },
                              child: Icon(Icons.lock)),
                          // backgroundImage: AssetImage('assets/images/messi.jpg'),
                        ),
                        Text("No.${index + 1}")
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
                flex: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                        flex: 60,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Icon(Icons.lock),
                              // backgroundImage: AssetImage('assets/images/messi.jpg'),
                            ),
                            SizedBox(width: 4,),
                            Text("Hi..."),
                          ],
                        )),
                    Expanded(
                        flex: 35,child: Column(
                      children: [

                        InkWell(
                          onTap: (){



                          },
                          child: Expanded(
                            flex: 30,
                            child: Card(
                              child: Container(
                                width: 120,
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                      scrollDirection: Axis.vertical,
                                      height: 100.0,
                                      viewportFraction: 1,
                                      autoPlayInterval: Duration(seconds: 2),
                                      autoPlay: true,
                                      onPageChanged: (index, _) {
                                        _currentCarouselIndex.value = index;
                                      }),
                                  items: [1, 2, 3, 4, 5, 6,].map((i) {
                                    return Builder(
                                      builder: (BuildContext context) {
                                        return Container(
                                            width: MediaQuery.of(context).size.width,
                                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color: Colors.amber),
                                            alignment: Alignment.center,
                                            child: Text(
                                              'text $i',
                                              style: TextStyle(fontSize: 16.0),
                                            ));
                                      },
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ),

                        ValueListenableBuilder(
                            valueListenable: _currentCarouselIndex,
                            builder: (context, currentValue, _) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0; i < 6; i++)
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            color: currentValue == i
                                                ? blackColor
                                                : softGreyColor,
                                            border: Border.all(
                                                color: greyColor.withOpacity(0.5)),
                                            borderRadius: BorderRadius.circular(10)),
                                      ),
                                    )
                                ],
                              );
                            }),

                      ],
                    )),
                  ],
                )),

            Expanded(
              flex: 15,
              child: Row(
                children: [
                  Expanded(
                      flex: 20,
                      child: Icon(Icons.speaker)),
                  Expanded(flex: 20, child: Row(
                    children: [
                      Icon(Icons.messenger),
                      Text('Say hi..')
                    ],
                  )),
                  Expanded(flex: 20, child:Icon(Icons.mail)),

                  Expanded(
                      flex: 20,
                      child:IconButton(onPressed: (){


                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                            builder: (context) =>  const VoiceRoomCustomizeScreen()), (route) => true);
                      },

                          icon: Icon(Icons.wallet_giftcard))

                  ),
                  Expanded(
                      flex: 20,

                      child: Icon(Icons.dataset)),


                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Container(
height: 90,
color: Colors.grey,
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
  children: [

    Text("Member group"),
    SizedBox(height: 3,),
    Row(
        children: [
          Expanded(
            flex:5,

            child: CircleAvatar(
              radius: 20,

              backgroundImage:AssetImage('assets/images/messi.jpg'),
            ),
          ),
          Expanded(
            flex: 20,
            child: ListTile(
              title:Text("Group Name") ,
              subtitle:Text("Suptitle Name")  ,
              trailing:IconButton(onPressed: (){}, icon: Icon(Icons.login)) ,

            ),
          )

        ],

    ),


  ],
),

              ),
            ),


            Card(
              child: Container(
                height: 50,
                color: Colors.grey,
                child: ListTile(
                  title:Text("Room managment Center ") ,
                  //subtitle:Text("Suptitle Name")  ,
                  trailing:IconButton(onPressed: (){

                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context) =>  RoomManamentCenterScreen()), (route) => true);

                  }, icon: Icon(Icons.login)) ,

                ),

              ),
            ),
            Card(
              child: Container(
                height: 60,
                color: Colors.grey,
                child: ListTile(
                  title:Text("Room Level") ,
                  subtitle:Text("lv.10")  ,
                  trailing:IconButton(onPressed: (){}, icon: Icon(Icons.login)) ,

                ),

              ),
            ),
            Card(
              child: Container(
                height: 60,
                color: Colors.grey,
                child: ListTile(
                  title:Text("Current Level Ranking") ,
                  subtitle:Text("LV.10")  ,
                  trailing:IconButton(onPressed: (){}, icon: Icon(Icons.login)) ,

                ),

              ),
            ),
            Card(
              child: Container(
                height: 60,
                color: Colors.grey,
                child: ListTile(
                  title:Text("Member") ,
                  subtitle:Text("32,110") ,

                ),

              ),
            ),
            Card(
              child: Container(
                height: 60,
                color: Colors.grey,
                child: ListTile(
                  title:Text("Followe") ,
                  subtitle:Text("32,110") ,

                ),

              ),
            ),
            Card(
              child: Container(
                height: 60,
                color: Colors.grey,
                child: ListTile(
                  title:Text("Topic") ,
                  subtitle:Text("it is a very dangerous")  ,

                ),

              ),
            ),
            Card(
              child: Container(
                height: 60,
                color: Colors.grey,
                child: ListTile(
                  title:Text("description") ,
                  subtitle:Text("very very well")  ,

                ),

              ),
            ),

          ],
        ),
      ),




    );
  }
}



class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(child: Text('History')),
    );
  }
}

















