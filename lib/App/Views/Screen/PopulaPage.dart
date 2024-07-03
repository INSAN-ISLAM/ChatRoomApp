// check comment


// 2nd commit
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../Constant/ConstantValue.dart';
import 'AudioConversationPage.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  final ValueNotifier<int> _currentCarouselIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                Card(
                  child: CarouselSlider(
                    options: CarouselOptions(
                        height: 120.0,
                        viewportFraction: 1,
                        autoPlayInterval: Duration(seconds: 4),
                        autoPlay: true,
                        onPageChanged: (index, _) {
                          _currentCarouselIndex.value = index;
                        }),
                    items: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((i) {
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
                ValueListenableBuilder(
                    valueListenable: _currentCarouselIndex,
                    builder: (context, currentValue, _) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 10; i++)
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
                SizedBox(
                  height: 4,
                ),
                InkWell(
                  onTap: (){



                  },
                  child: Row(
                    children: [
                      Expanded(
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
                              items: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((i) {
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
                      Expanded(
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
                              items: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((i) {
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
                      Expanded(
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
                              items: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((i) {
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
                    ],
                  ),
                ),
                Text("* Level-1",
                  style: TextStyle(
                    fontSize: 20,
                      color: Colors.teal,
                  ),
                ),
               ListTile(
                 title: Text("Fm 0.8 voice of islam  ",
                   style: TextStyle(
                     fontSize: 20,
                     color: Colors.teal,
                   ),
                 ),
                 subtitle:const Text("Group Suptitle",
                 style: TextStyle(
               fontSize: 20,
               color: Colors.teal,
               ),
    ) ,
                 trailing: InkWell(
                   onTap: (){
                     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                         builder: (context) =>  const AudioConversationScreen()), (route) => true);

                   },
                   child: Image.asset(
                   'assets/images/messi.jpg',
                   height: 90,
                   width: 80,
                   fit: BoxFit.cover,
                   ),
                 ),


               ),

            Row(

        children: [
        CircleAvatar(
          radius: 30,
          backgroundImage:AssetImage('assets/images/messi.jpg'),
        ),
         SizedBox(width: 5,),
          CircleAvatar(
            radius: 30,
            backgroundImage:AssetImage('assets/images/messi.jpg'),
          ),
          SizedBox(width: 5,),
          CircleAvatar(
            radius: 30,
            backgroundImage:AssetImage('assets/images/messi.jpg'),
          ),
          SizedBox(width: 5,),
          CircleAvatar(
            radius: 30,
            backgroundImage:AssetImage('assets/images/messi.jpg'),
          ),
        ],
      ),





            Text("* Level-2",
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepOrangeAccent,
              ),
            ),
            ListTile(
              title: Text("Fm 0.8 voice of islam  ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                ),
              ),
              subtitle:Text("Group Suptitle",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                ),
              ) ,
              trailing: InkWell(
                onTap: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                      builder: (context) =>  const AudioConversation1Screen()), (route) => true);

                },
                child: Image.asset(
                  'assets/images/messi.jpg',
                  height: 90,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),


            ),

            Row(

              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:AssetImage('assets/images/messi.jpg'),
                ),
                SizedBox(width: 5,),
                CircleAvatar(
                  radius: 30,
                  backgroundImage:AssetImage('assets/images/messi.jpg'),
                ),
                SizedBox(width: 5,),
                CircleAvatar(
                  radius: 30,
                  backgroundImage:AssetImage('assets/images/messi.jpg'),
                ),
                SizedBox(width: 5,),
                CircleAvatar(
                  radius: 30,
                  backgroundImage:AssetImage('assets/images/messi.jpg'),
                ),
              ],
            ),
            Text("* Level-3",
              style: TextStyle(
                fontSize: 20,
                  color: Colors.lightGreenAccent
              ),
            ),
            ListTile(
              title: Text("Fm 0.8 voice of islam  ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                ),
              ),
              subtitle:Text("Group Suptitle",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                ),
              ) ,
              trailing: InkWell(
                onTap: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                      builder: (context) =>  const AudioConversation1Screen()), (route) => true);

                },
                child: Image.asset(
                  'assets/images/messi.jpg',
                  height: 90,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),


            ),

            Row(

              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:AssetImage('assets/images/messi.jpg'),
                ),
                SizedBox(width: 5,),
                CircleAvatar(
                  radius: 30,
                  backgroundImage:AssetImage('assets/images/messi.jpg'),
                ),
                SizedBox(width: 5,),
                CircleAvatar(
                  radius: 30,
                  backgroundImage:AssetImage('assets/images/messi.jpg'),
                ),
                SizedBox(width: 5,),
                CircleAvatar(
                  radius: 30,
                  backgroundImage:AssetImage('assets/images/messi.jpg'),
                ),
              ],
            ),


              ],
            ),
        )),

    );
  }
}
