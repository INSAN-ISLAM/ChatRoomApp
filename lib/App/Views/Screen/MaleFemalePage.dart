import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constant/CountryClass.dart';
import '../Widgets/AppTextField.dart';
import 'HomePage.dart';
import 'NavigationBar.dart';

class MaleFemaleScreen extends StatefulWidget {
  const MaleFemaleScreen({Key? key}) : super(key: key);

  @override
  State<MaleFemaleScreen> createState() => _MaleFemaleScreenState();
}

class _MaleFemaleScreenState extends State<MaleFemaleScreen> {
  final List<Country> countries = [
    Country(name: 'United States', flagUrl: 'https://flagcdn.com/w20/us.png'),
    Country(name: 'Bangladesh', flagUrl: 'https://flagcdn.com/w20/bd.png'),
    Country(name: 'Canada', flagUrl: 'https://flagcdn.com/w20/ca.png'),
    Country(name: 'France', flagUrl: 'https://flagcdn.com/w20/fr.png'),
    Country(name: 'Germany', flagUrl: 'https://flagcdn.com/w20/de.png'),
    Country(name: 'Japan', flagUrl: 'https://flagcdn.com/w20/jp.png'),
  ];

  Country? selectedCountry;
  TextEditingController NameEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:Padding(
            padding: const EdgeInsets.all(8.0),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage:AssetImage('assets/images/messi.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("please choose your gender \nCan not modify after select gender "),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      flex: 40,
                      child: Column(
                        crossAxisAlignment:  CrossAxisAlignment.end,
                        children: [


                          const Center(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:AssetImage('assets/images/messi.jpg'),
                            ),
                          ),

                          SizedBox(
                            height: 4,
                          ),
                          Center(child: Text("Boy")),

                        ],
                      ),
                    ),
                    Expanded(
                      flex: 40,
                      child: Column(
                        crossAxisAlignment:  CrossAxisAlignment.end,
                        children: [


                          const Center(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:AssetImage('assets/images/messi.jpg'),
                            ),
                          ),

                          SizedBox(
                            height: 4,
                          ),
                          Center(child: Text("Girl")),

                        ],
                      ),
                    ),
                    // SizedBox(width: 50,),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppTextFieldWidget(hintText: 'Name', controller: NameEditingController,),
                ),
                Center(
                  child: DropdownButton<Country>(
                    hint: Text('Select Country'),
                    value: selectedCountry,
                    onChanged: (Country? newValue) {
                      setState(() {
                        selectedCountry = newValue;
                      });
                    },
                    items: countries.map((Country country) {
                      return DropdownMenuItem<Country>(
                        value: country,
                        child: Row(
                          children: [
                            Image.network(
                              country.flagUrl,
                              width: 20,
                              height: 20,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 10),
                            Text(country.name),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(

                      onPressed:()  {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                            builder: (context) =>  MainBottomNavBar()), (route) => true);


                      }, child:const Text("Next"),  ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}









class SuggestFriendScreen extends StatefulWidget {
  const SuggestFriendScreen({Key? key}) : super(key: key);

  @override
  State<SuggestFriendScreen> createState() => _SuggestFriendScreenState();
}

class _SuggestFriendScreenState extends State<SuggestFriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  MainBottomNavBar()));



      }, child: Text('Next')),
    );
  }
}

