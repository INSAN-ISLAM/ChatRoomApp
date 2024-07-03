import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Message',
          style: GoogleFonts.arbutusSlab(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.mark_email_read_rounded))
        ],
      ),
      body: Scrollbar(
        thickness: 15,
        radius: Radius.circular(15),
        thumbVisibility: true,
        child: ListView.separated(
          itemCount: students.length,
          addAutomaticKeepAlives: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return ListTile(

              trailing: Text("11/05/2024"),
              title: Text('${students[index]['title']}',
                style: GoogleFonts.arbutusSlab(
                  textStyle: TextStyle(

                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Text("${students[index]['Price']}",
                style: GoogleFonts.arbutusSlab(
                  textStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('${students[index]['image']}'),
              ),

              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactUs(
                    msg:  students[index]['title'],
                    img:  students[index]['image'],
                    Ps: students[index]['Price'],
                  ),
                  ),
                );
              },

            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 2,
              height: 30,
              color: Colors.deepOrange,
            );
          },
        ),
      ),
    );
  }
}
class ContactUs extends StatelessWidget {
  final  String? msg;
  final  String? img;
  final  String? Ps;

  ContactUs({required this.msg, required this.img ,required this.Ps});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
                title: Text("Alert !"),
                content: Text("Do you want?"),
                actions: [
                  TextButton(
                      onPressed: () {
                        MySnackBar("Add Card", context);
                        Navigator.of(context).pop();
                      },
                      child: Text("Yes")),
                  TextButton(
                      onPressed: () {
                        MySnackBar("Thanks", context);
                        Navigator.of(context).pop();
                      },
                      child: Text("No")),
                ],
              ));
        });
  }

  ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      padding: EdgeInsets.all(20),

      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
      )
  );

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('$msg',
          style: GoogleFonts.arbutusSlab(
            textStyle: TextStyle(
              color: Colors.black87,
              fontSize: 15,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Fruit Name:$msg",
                style: GoogleFonts.arbutusSlab(
                  textStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 300,
                height: 300,
                color:Colors.cyan ,
                child: Image(
                    image : NetworkImage('$img')),
              ),
              Text("Price:$Ps",
                style: GoogleFonts.arbutusSlab(
                  textStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(onPressed: (){MyAlertDialog(context);}, child: Text('Buy Now'),style: buttonStyle,),
                  SizedBox(width: 10,),
                  OutlinedButton(onPressed: (){MyAlertDialog(context);}, child: Text('Add Card'),style: buttonStyle,),


                ],
              ),

              Text("My company fruits app provides information about various fruits and their characteristics, such as type, taste, nutrition, and benefits. Users can search for and learn about different fruits, and save their favorite fruits for easy reference.",
                style: GoogleFonts.arbutusSlab(
                  textStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.purpleAccent,
                    fontSize: 16,
                  ),
                ),
              ),
            ],

          ),
        ),
      ),


    );
  }
}
var students = [
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you"
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you",
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you",
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you",
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you"
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"500gm  200 Taka"
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you"
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"2 Pize  100 Taka",
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you",
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you",
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you",
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you",
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you",
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you"
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you"
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"1 Glass  20 Taka"
  },
  {
    "image":"assets/images/messi.jpg",  //"assets/images/Class2.jpg",
    "title":"Messi",
    "Price":"I followed you"
  },
  {
    "image":"data:image/jpeg;base64,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",
    "title":"Tomato ",
    "Price":"I followed you"
  },
  {
    "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_XfspAe3LzcDrlLotDDPMefS-Li3vgJC_tA&usqp=CAU",
    "title":"Black Plum",
    "Price":"I followed you"
  },
];