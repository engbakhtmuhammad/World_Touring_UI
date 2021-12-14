import 'package:flutter/material.dart';
import 'package:flutter_homescreen_task/Screens/detailsScreen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
              0.1,
              0.5,
              0.8,
              1
            ],
                colors: [
              Color(0xff1c73a0),
              Color(0xff082c42),
              Color(0xff031926),
              Color(0xff031926)
            ])),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(radius: 25,backgroundImage: AssetImage("Images/Profile1.jpg"),),
                title: Text("Jhonathon Doe",style: TextStyle(fontSize: 18),),
                subtitle: Text("Online",style: TextStyle(color: Colors.white),),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.15),
              ListTile(
                title: Text("Home",style: TextStyle(fontSize: 18,color: Colors.lightBlue),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
                },
              ),
              ListTile(
                title: Text("Destination",style: TextStyle(fontSize: 18,color: Colors.white60),),
              ),
              ListTile(
                title: Text("Add trip",style: TextStyle(fontSize: 18,color: Colors.white60),),
              ),
              ListTile(
                title: Text("Favrouite",style: TextStyle(fontSize: 18,color: Colors.white60),),
              ),
              ListTile(
                title: Text("Messages",style: TextStyle(fontSize: 18,color: Colors.white60),),
              ),
              ListTile(
                title: Text("Profile",style: TextStyle(fontSize: 18,color: Colors.white60),),
              ),
              ListTile(
                title: Text("Log out",style: TextStyle(fontSize: 18,color: Colors.white60),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
