import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final double circleRadius = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(223, 82, 54, 43),
      ),
      body: ListView(
        children: [
          Stack(children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Padding(
                    padding:
                    EdgeInsets.only(top: circleRadius / 2.0, ),  ///here we create space for the circle avatar to get ut of the box
                    child: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8.0,
                            offset: Offset(0.0, 5.0),
                          ),
                        ],
                      ),
                      width: double.infinity,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Column(
                            children: <Widget>[


                              SizedBox(height: circleRadius/2,),

                              Text('Amal A Samad', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                              Text('amalasamad9@gmail.com', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0,),),

                              SizedBox(
                                height: 20.0,
                              ),

                            ],
                          )
                      ),
                    ),
                  ),

                  ///Image Avatar
                  Container(
                    width: circleRadius,
                    height: circleRadius,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8.0,
                          offset: Offset(0.0, 5.0),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Center(
                        child: CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage("images/asd.jpeg"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),

          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(title: Text(" Name"),subtitle: Text("Amal"),trailing: InkWell(child: Icon(Icons.edit),),),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(title: Text(" Mobile Number"),subtitle: Text("+918113808039"),trailing: InkWell(child: Icon(Icons.edit),),),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(title: Text("Email ID"),subtitle: Text("amalasamad@gmail.com"),trailing: InkWell(child: Icon(Icons.edit),),),
          )
        ],
      ),
    );
  }
}
