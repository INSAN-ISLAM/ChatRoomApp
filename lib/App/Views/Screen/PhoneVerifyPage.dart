
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';



import '../Widgets/AppEevatedButton.dart';
import '../Widgets/AppTextField.dart';
import 'HomePage.dart';
import 'MaleFemalePage.dart';





class PhoneLogIn extends StatelessWidget {
  PhoneLogIn({Key? key}) : super(key: key);
  final TextEditingController emailETController = TextEditingController();
  final TextEditingController NameETController = TextEditingController();
  final TextEditingController bloodNameETController = TextEditingController();
  final TextEditingController ReferETController = TextEditingController();
  final TextEditingController passwordETController = TextEditingController();
  final TextEditingController RepasswordETController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool m=true;

  // Future<void> _signUp() async {
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: emailETController.text,
  //       password: passwordETController.text,
  //     ).then((value) async {
  //
  //       FirebaseFirestore.instance.collection('Check').doc(value.user!.uid).set({
  //         'name': NameETController.text,
  //         'mobile': mobileETController.text,
  //         'email': emailETController.text,
  //         'Blood': bloodNameETController.text,
  //         'Class Name': ClassNameETController.text,
  //         'password': int.tryParse(passwordETController.text) ?? 0,
  //       });
  //       return value;
  //
  //     } );
  //
  //
  //     //print('User signed up: ${userCredential.user!.uid}');
  //
  //   } catch (e) {
  //     // Error occurred during signup
  //     print('Error signing up: $e');
  //     // showSnackBarMessage(context as BuildContext, 'Registration Failed! Try again', true);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Container(
              height: 300,
              width:MediaQuery.of(context).size.width,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 10,
                    child: Text(
                      'Welcome Back To Page ',
                    ),
                  ),
                  SizedBox(height:5,),

                  Expanded(
                    flex: 20,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 20,
                          child: TextFormField(
                            //onChanged: onChanged,
                            //controller: controller,
                            obscureText: true ?? false,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              hintText: "+880",
                              hintStyle:TextStyle(
                                color: Color(0xFF6A7189),
                                fontSize: 16,
                              ),
                              filled: true,
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                              // enabledBorder: const OutlineInputBorder(
                              //   borderRadius: BorderRadius.all(Radius.circular(10)),
                              //   borderSide: BorderSide(color: Colors.transparent),
                              // ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                // borderSide: BorderSide(color: Colors.transparent),

                              ),

                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          flex: 80,
                          child: TextFormField(
                            //onChanged: onChanged,
                            //controller: controller,
                            obscureText: true ?? false,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              hintText: "19575777",
                              hintStyle:TextStyle(
                                color: Color(0xFF6A7189),
                                fontSize: 16,
                              ),
                              filled: true,
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                              // enabledBorder: const OutlineInputBorder(
                              //   borderRadius: BorderRadius.all(Radius.circular(10)),
                              //   borderSide: BorderSide(color: Colors.transparent),
                              // ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                // borderSide: BorderSide(color: Colors.transparent),

                              ),

                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  // SizedBox(height: 20),
                  // AppTextFieldWidget(
                  //   controller: ReferETController,
                  //   hintText: 'Refer Code(Optional)',
                  //   validator: (value) {
                  //     if (value?.isEmpty ?? true) {
                  //       return 'Enter your valid Refer Code';
                  //     }
                  //     return null;
                  //   },
                  //
                  // ),




                  SizedBox(height:5,),
                  AppElevatedButton(
                    Color: Colors.white10,
                    child: const Text('Send Otp'),
                    onTap:  ()  async {
                      if (_formKey.currentState!.validate()) {
                        try {
                          //   _signUp();
                         Navigator.push(context, MaterialPageRoute(builder: (context) =>  OtpVerificationScreen()));

                        } catch (e) {

                        }

                        //  Navigator.pop(context);
                      }
                      //

                    },

                  ),



                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}



class OtpVerificationScreen extends StatefulWidget {
  //final String email;

  const OtpVerificationScreen({Key? key,
    //required this.email
  })
      : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpPinETController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(24.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pin Verification',

              ),
              const SizedBox(
                height: 8,
              ),

              PinCodeTextField(
                controller: _otpPinETController,
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  selectedColor: Colors.green,
                ),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                  setState(() {});
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
                appContext: context,
              ),
              const SizedBox(
                height: 16,
              ),
              AppElevatedButton(
                  child: const Text('Verify'),
                  onTap: () async {

                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  MaleFemaleScreen()));
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => ResetPasswordScreen(
                    //       // email: widget.email,
                    //       // otp: _otpPinETController.text,
                    //     ),
                    //   ),
                    // );

                    // final response = await NetworkUtils().getMethod(
                    //   Urls.recoverVerifyOTPUrl(
                    //     widget.email,
                    //     _otpPinETController.text.trim(),
                    // ),
                    //);
                    //
                    // if (response != null && response['status'] == 'success') {
                    //   if (mounted) {
                    //     showSnackBarMessage(
                    //         context, 'OTP verification done!');
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => ResetPasswordScreen(
                    //           email: widget.email,
                    //           otp: _otpPinETController.text,
                    //         ),
                    //       ),
                    //     );
                    //   }
                    // } else {
                    //   if (mounted) {
                    //     showSnackBarMessage(context,
                    //         'OTP verification failed! Check your otp');
                    //   }
                    // }
                  }),

            ],
          ),
        ),
      ),

    );
  }
}