

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/ItemCard.dart';

class RecentlyScreen extends StatefulWidget {


  @override
  State<RecentlyScreen> createState() => _RecentlyScreenState();
}

class _RecentlyScreenState extends State<RecentlyScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child:  ItemCard(),
        );
      },
    );
  }
}
