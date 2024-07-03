import 'package:flutter/material.dart';


class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => const UpdateProfileScreen()));
      },
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      leading: const CircleAvatar(child: Icon(Icons.person)),
      tileColor: Colors.green,
      title: Text('insan'),
      subtitle: Text('Id:43534'),
      trailing: IconButton(
        onPressed: () async {
          // await AuthUtils.clearData();
          //  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
          //      builder: (context) => LoginScreen()), (route) => false);
        },
        icon: const Icon(Icons.logout, color: Colors.white,),
      ),
    );
  }
}