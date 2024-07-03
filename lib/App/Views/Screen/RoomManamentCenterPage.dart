import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/AppEevatedButton.dart';

class RoomManamentCenterScreen extends StatefulWidget {
  const RoomManamentCenterScreen({Key? key}) : super(key: key);

  @override
  State<RoomManamentCenterScreen> createState() => _RoomManamentCenterScreenState();
}

class _RoomManamentCenterScreenState extends State<RoomManamentCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('RoomManamentCenter'),
  
),
body: SingleChildScrollView(
  child:   Column(
  
          
  
         children: [
  
           Row(
  
             children: [
  
               SizedBox(width: 4,),
  
               CircleAvatar(
  
                 radius: 20,
  
  
  
                 backgroundImage:AssetImage('assets/images/messi.jpg'),
  
               ),
  
    SizedBox(width: 4,),
  
    Text('profile name'),
  
               SizedBox(width: 4,),
  
    Text('SVIP Chanel'),
  
  
  
             ],
  
           ),
  
          SizedBox(height: 4),
  
            Row(
  
        children: [
  
          Expanded(
  
            flex: 35,
  
            child: Container(
  
             // color: Colors.deepOrange,
  
              height: 50,
  
              width: 150,
  
              child: ElevatedButton(
  
                  onPressed: (){
  
  
  
                  }, child:Text('ChannelTask'), ),
  
            ),
  
          ),
  
          SizedBox(width: 5),
  
          Expanded(
  
            flex: 33,
  
            child: Container(
  
              height: 50,
  
              width: 150,
  
              child: ElevatedButton(
  
                onPressed: (){
  
  
  
                }, child:Text('Room Task'), ),
  
            ),
  
          ),
  
          SizedBox(width: 5),
  
          Expanded(
  
            flex: 33,
  
            child: Container(
  
              height: 50,
  
              width: 150,
  
              child: ElevatedButton(
  
                onPressed: (){
  
  
  
                }, child:Text('Data center'), ),
  
            ),
  
          ),
  
        ],
  
  
  
  
  
  
  
      ),
  
           SizedBox(height: 5,),
  
           Card(
  
             child: Container(
  
               height: 100,
  
               width: double.infinity,
  
               color: Colors.grey,
  
               child: Column(
  
                 crossAxisAlignment: CrossAxisAlignment.start,
  
                 children: [
  
                   Padding(
  
                     padding: const EdgeInsets.only(left: 8.0),
  
                     child: Text("Unclaimed Income"),
  
                   ),
  
                 SizedBox(height: 5,),
  
                   Row(
  
                     children: [
  
                        Icon(Icons.ac_unit),
  
                          Text('28.464'),
  
                          SizedBox(width:250,),
  
                          Text('data')
  
  
  
  
  
                     ],
  
                   )
  
  
  
                 ],
  
  
  
               )
  
  
  
             ),
  
           ),
  
  
  
           Card(
  
             child: Container(
  
                 //height: 100,
  
                 width: double.infinity,
  
                 color: Colors.grey,
  
                 child: Column(
  
                   crossAxisAlignment: CrossAxisAlignment.start,
  
                   children: [
  
                     Padding(
  
                       padding: const EdgeInsets.only(left: 8.0),
  
                       child: Text("Chennel policy"),
  
                     ),
  
                     SizedBox(height: 5,),
  
                     Row(
  
                       children: [
  
                         Expanded(
  
                             flex:33,
  
                             child: Column(
  
                               children: [
  
                                 Text('28.464'),
  
                                 Icon(Icons.ac_unit),
  
                               ],
  
                             )),
  
                         Expanded(
  
                           flex: 33,
  
                           child:  Text('10%'),),
  
                         Expanded(
  
                             flex:33,
  
                             child: Column(
  
                               children: [
  
                                 Text('28.464'),
  
                                 Icon(Icons.ac_unit),
  
                               ],
  
                             )),
  
  
  
  
  
  
  
                       ],
  
                     ),
  
                     Row(
  
                       children: [
  
                         Expanded(
  
                             flex:33,
  
                             child: Column(
  
                               children: [
  
                                 Text('28.464'),
  
                                 Icon(Icons.ac_unit),
  
                               ],
  
                             )),
  
                         Expanded(
  
                           flex: 33,
  
                           child:  Text('10%'),),
  
                         Expanded(
  
                             flex:33,
  
                             child: Column(
  
                               children: [
  
                                 Text('28.464'),
  
                                 Icon(Icons.ac_unit),
  
                               ],
  
                             )),
  
  
  
  
  
  
  
                       ],
  
                     ),
  
  
  
                     Text('My Income'),
  
                     SizedBox(height: 5,),
  
                     Row(
  
                       children: [
  
                         SizedBox(width: 4,),
  
                         CircleAvatar(
  
                           radius: 20,
  
  
  
                           backgroundImage:AssetImage('assets/images/messi.jpg'),
  
                         ),
  
                         SizedBox(width: 10,),
  
                         Text('profile name'),
  
                         SizedBox(width:140,),
  
                         Column(
  
                            children: [
  
  
  
                              Text('546.763'),
  
                              //Text('SVIP Chanel')
  
                            ],
  
  
  
  
  
                         ),
  
  
  
                       ],
  
                     ),
  
                     SizedBox(height: 10,),
  
                     Text('Supper Admin'),
  
                     SizedBox(height: 10,),
  
                     ListTile(
  
                       leading:  CircleAvatar(
  
                         radius: 20,
  
  
  
                         backgroundImage:AssetImage('assets/images/messi.jpg'),
  
                       ),
  
                       title:Text('profile name'),
  
                       trailing:TextButton(onPressed: (){}, child: Text('Edit'),) ,
  
                     )
  
  
  
                   ],
  
  
  
                 )
  
  
  
             ),
  
           ),
  
        SizedBox(height: 10,),
  
           Card(
  
             child: Container(
  
               width: double.infinity,
  
               child: Column(
  
                 crossAxisAlignment: CrossAxisAlignment.start,
  
                 children: [
  
                   ListTile(
  
                     title: Text('Super member'),
  
                     trailing:IconButton(onPressed: (){
                       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                           builder: (context) =>  SupperMemberScreen()), (route) => true);


                     }, icon: Icon(Icons.arrow_forward_ios_outlined)),
  
                      ),
  
                   Row(
  
                     children: [
  
                       Column(
  
                         children: [
  
                           CircleAvatar(
  
                             radius: 20,
  
  
  
                             child:TextButton(onPressed: (){}, child: Text('+'),)
  
                           ),
  
                           Text('Add'),
  
                         ],
  
                       ),
  
                       SizedBox(width: 6,),
  
                       Column(
  
                         children: [
  
                           CircleAvatar(
  
                             radius: 20,
  
  
  
                             backgroundImage:AssetImage('assets/images/messi.jpg'),
  
                           ),
  
                           Text('Name'),
  
                         ],
  
                       ),
  
                       SizedBox(width: 6,),
  
                       Column(
  
                         children: [
  
                           CircleAvatar(
  
                             radius: 20,
  
  
  
                             backgroundImage:AssetImage('assets/images/messi.jpg'),
  
                           ),
  
                           Text('Name'),
  
                         ],
  
                       ),
  
                       SizedBox(width: 6,),
  
                       Column(
  
                         children: [
  
                           CircleAvatar(
  
                             radius: 20,
  
  
  
                             backgroundImage:AssetImage('assets/images/messi.jpg'),
  
                           ),
  
                           Text('Name'),
  
                         ],
  
                       ),
  
                       SizedBox(width: 6,),
  
                       Column(
  
                         children: [
  
                           CircleAvatar(
  
                             radius: 20,
  
  
  
                             backgroundImage:AssetImage('assets/images/messi.jpg'),
  
                           ),
  
                           Text('Name'),
  
                         ],
  
                       ),
  
                       SizedBox(width: 6,),
  
                       Column(
  
                         children: [
  
                           CircleAvatar(
  
                             radius: 20,
  
  
  
                             backgroundImage:AssetImage('assets/images/messi.jpg'),
  
                           ),
  
                           Text('Name'),
  
                         ],
  
                       ),
  
                       SizedBox(width: 6,),
  
                       Column(
  
                         children: [
  
                           CircleAvatar(
  
                             radius: 20,
  
  
  
                             backgroundImage:AssetImage('assets/images/messi.jpg'),
  
                           ),
  
                           Text('Name'),
  
                         ],
  
                       ),
  
                       SizedBox(width: 6,),
  
                       Column(
  
                         children: [
  
                           CircleAvatar(
  
                             radius: 20,
  
  
  
                             backgroundImage:AssetImage('assets/images/messi.jpg'),
  
                           ),
  
                           Text('Name'),
  
                         ],
  
                       ),
  
  
  
  
  
                     ],
  
                   ),
  
                   SizedBox(height: 10,),
  
                   Text('Chennel Income'),
  
                   SizedBox(height: 8,),
  
                   ListTile(
  
                     trailing:Text('Role') ,
  
                     title: Text('User') ,
  
  
  
  
  
                   ),
  
  
  
                   Text('Chennel 0wner'),
  
                   SizedBox(height: 5,),
  
                   ListTile(
  
                     trailing:Text('Cnannel Owner') ,
  
                     title: Text('Group Name') ,
  
                     leading:  CircleAvatar(
  
                       radius: 20,
  
  
  
                       backgroundImage:AssetImage('assets/images/messi.jpg'),
  
                     ),
  
  
  
  
  
                   ),

                   Text('Super Admin'),

                   ListTile(

                     trailing:Text('Super Admin') ,

                     title: Text('Group Name') ,

                     leading:  CircleAvatar(

                       radius: 20,



                       backgroundImage:AssetImage('assets/images/messi.jpg'),

                     ),





                   ),
                 ],
  
               ),
  
  
  
  
  
  
  
  
  
             )
  
  
  
  
  
  
  
  
  
  
  
             ,
  
           )
  
  
  
  
  
  
  
  
  
         ], 
  
        ),
),

    );
  }
}
class SupperMemberScreen extends StatefulWidget {
  const SupperMemberScreen({Key? key}) : super(key: key);

  @override
  State<SupperMemberScreen> createState() => _SupperMemberScreenState();
}

class _SupperMemberScreenState extends State<SupperMemberScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          title: Text("Super Member Maneger"),
          actions: [
            IconButton(onPressed: (){


            }, icon: Icon(Icons.dehaze))
          ],

        ),
        body:Column(
          children: [
            Expanded(
              flex: 90,
              child: ListView.builder(
                itemCount: 16,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      child: ListTile(
                        leading:  CircleAvatar(
                          radius: 30,
                          //child: Icon(Icons.lock),
                          backgroundImage: AssetImage('assets/images/messi.jpg'),
                        ),
                        title:Text('karim'),
                        subtitle: Text("thank you"),

                      ),
                    ),
                  );
                },
              ),
            ),

            Expanded(
              flex: 8,
              child: Container(
                height: 48,
                width: 358,
                child: AppElevatedButton(
                  Color: Colors.blueGrey,
                  onTap: () {
                    // if (_formKey.currentState!.validate()) {
                    //   // Navigator.push(
                    //   //     context,
                    //   //     MaterialPageRoute(
                    //   //         builder: (context) => const DashBord()));
                    //
                    //
                    //
                    //
                    // }
                  },
                  child: Center(
                    child: Text(
                      " + Add",
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
            Expanded(
              flex: 3,
              child:Text("")
            ),
          ],
        )

      ),
    );
  }
}
