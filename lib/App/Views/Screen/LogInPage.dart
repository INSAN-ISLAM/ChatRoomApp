
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../Widgets/AppEevatedButton.dart';
import 'NavigationBar.dart';
import 'PhoneVerifyPage.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Image.asset("assets/images/Hapi.jpeg",

                    fit: BoxFit.scaleDown,
                    //color: Colors.white
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                width: 422,
                child: AppElevatedButton(
                  Color: Colors.white,
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const LogInSreen()));

                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainBottomNavBar()));

                  },


                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                              radius: 14,
                              backgroundImage:AssetImage('assets/images/Facebook.jpeg'),
                            ),  //color: Colors.white

                  Expanded(
                    flex: 50,
                    child: Text(
                              "Facebook",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color:Colors.black,

                                  fontSize: 14,

                                  //fontWeight: FontWeight.w700,
                                ),
                              ),
                    ),
                  ),



                      ],
                    ),
                ),
              ),

              ),

              const SizedBox(
                height: 10,
              ),
              Container(
                width: 422,
                child: AppElevatedButton(
                  Color: Colors.white,
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const LogInSreen()));

                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainBottomNavBar()));

                  },


                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundImage:AssetImage('assets/images/Google.png'),
                        ),  //color: Colors.white

                        Expanded(
                          flex: 50,
                          child: Text(
                            "Google",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color:Colors.black,

                                fontSize: 14,

                                //fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),
                ),

              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  '------------- OR -------------',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),



          ElevatedButton(

            onPressed:()  {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context) =>  PhoneLogIn()), (route) => true);


          }, child:const CircleAvatar(
            radius: 30,
           backgroundImage:AssetImage('assets/images/Phone.png'),
          ),  )





            ],
          ),
        ),
      ),
    );
  }
}
