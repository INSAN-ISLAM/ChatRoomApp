
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
   height: 100,
      //color: Colors.blueGrey,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(15),
      // ),
      child: Row(
        children: [
          Expanded(
            flex: 20,
            child: Image.asset(
              'assets/images/messi.jpg',
              fit: BoxFit.cover,
            ),),
          SizedBox(width: 10,),
          Expanded(
              flex: 60,
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [

                  Text("karim ahmed"),
                  Text("flag"),
                  Text("Welcome my room"),


                ],
              ))

        ],




      ),
    );
  }
}
