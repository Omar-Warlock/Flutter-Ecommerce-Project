import 'package:flutter/material.dart';
class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin:EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0) ,
        child: Column(
          children: [
            Center(child: Text("Home Admin",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,),),
            Material(
              elevation: 10.0,
              borderRadius:BorderRadius.circular(10) ,
              child: ,
            )
          ],
        ),
      ),
    );
  }
}