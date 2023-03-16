import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:  Color.fromARGB(223, 82, 54, 43),
          title: Text("Profile"),
          centerTitle: true,
        ),
        body:ListView(
          children: [

            Card(
              elevation: 10,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text("Account Settings",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                  InkWell(onTap:(){Navigator.pushNamed(context,  "/editprofile");},child: ListTile(leading: Icon(Icons.account_circle_outlined),title:Text("Edit Profile"),trailing: Icon(Icons.chevron_right),)),
                  InkWell(onTap:(){},child:ListTile(leading: Icon(Icons.account_balance_wallet_outlined),title:Text("Saved Card & Wallet"),trailing: Icon(Icons.chevron_right),)),
                  InkWell(onTap:(){},child:ListTile(leading: Icon(Icons.location_on_outlined),title:Text("Saved Addresses"),trailing: Icon(Icons.chevron_right),)),
                  ListTile(leading: Icon(Icons.edit_notifications_outlined),title:Text("Notification Settings"),trailing: Icon(Icons.chevron_right),),
                ],
              ),
            ),
            Card(
              elevation: 10,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text("My Activity",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                  InkWell(onTap:(){},child: ListTile(leading: Icon(Icons.rate_review_rounded),title:Text("Reviews"),trailing: Icon(Icons.chevron_right),)),
                  InkWell(onTap:(){},child:ListTile(leading: Icon(Icons.question_answer_outlined),title:Text("Questions & Answers"),trailing: Icon(Icons.chevron_right),)),

                ],
              ),
            ),
            Card(
              elevation: 10,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text("Feedback & information",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                  InkWell(onTap:(){},child: ListTile(leading: Icon(Icons.paste_outlined),title:Text("Terms,Policies and Licenses"),trailing: Icon(Icons.chevron_right),)),
                  InkWell(onTap:(){},child:ListTile(leading: Icon(Icons.question_mark_outlined),title:Text("Browse FAQs"),trailing: Icon(Icons.chevron_right),)),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text("      Log Out     "),
                ),
              ),
            ),
          ],
        )
    );
  }
}
