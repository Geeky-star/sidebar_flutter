import 'package:flutter/material.dart';
import 'package:sidebarapp/profile.dart';
import 'package:sidebarapp/home.dart';
import 'package:sidebarapp/settings.dart';


void main() => runApp(Sidebar());

class Sidebar extends StatefulWidget {
  @override
  _Sidebar createState() => _Sidebar();

}

class _Sidebar extends State<Sidebar>{
  int index=0;

  List <Widget> list = [Home(), Profile(), Settings()];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("SideBar"),
            backgroundColor: Colors.orange[900],
        ),
        body: list[index],
        drawer: Mydrawer(
            onTap: (ctx,i){
              setState((){
                index=i;
                Navigator.pop(ctx);
              });
            }
        ),
      ),
    );
  }
}

class Mydrawer extends StatelessWidget{
  final Function onTap;
  Mydrawer({this.onTap});
  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child:Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.orange[900]),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60, height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/image1.jpg'),
                      ),
                    ),
                    SizedBox(height: 16,),
                    Text("Mark Steve",style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
                    SizedBox(height: 3,),
                    Text("abc@gmail.com", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home",style: TextStyle(fontSize:16)),
              onTap: ()=> onTap(context,0),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile",style:TextStyle(fontSize:16)),
              onTap: ()=> onTap(context,1),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings", style:TextStyle(fontSize:16)),
              onTap: () => onTap(context,2),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("Feedback", style:TextStyle(fontSize:16)),
              onTap: () => onTap(context,3),
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text("About Us", style: TextStyle(fontSize: 16)),
              onTap: () => onTap(context,4),
            ),
          ],
        ),
      ),
    );
  }
}