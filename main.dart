import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ShopBottomNavigator.dart';
import 'Login_Screen.dart';
import 'Search.dart';
void main() => (runApp(First()));
class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(title: 'first',
      debugShowCheckedModeBanner: false
      ,
      theme: ThemeData(fontFamily: 'Bamshad'),/**/
      initialRoute: '/',
      routes: {
        '/': (context)=> FirstScreen(),
        '/second': (context)=> SecondScreen(),
        '/third': (context)=> ThirdScreen(),
        '/forth':(context)=>ForthScreen(),
        '/fifth':(context)=>FifthScreen(),
        '/sixth':(context)=>SixthScreen(),
        '/seven':(context)=>SevenScreen(),
        '/eight':(context)=>EightScreen(),
        '/nine':(context)=>NineScreen(),
        '/ten':(context)=>TenScreen(),
        '/eleven':(context)=>ElevenScreen(),
      },
    );
  }

}
class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(centerTitle: true,title: Text(' فروشگاه',style: TextStyle(color: Colors.blueGrey,fontFamily: "Bamshad"),), backgroundColor: Colors.black12, elevation:0,actions: <Widget>[
      IconButton(
        icon: Icon(Icons.shop,color: Colors.black45,),
      ),
      IconButton(
        icon: Icon(Icons.search,color: Colors.blueGrey[600],),
        onPressed: ()=>(Navigator.pushNamed(context, '/eleven')
        ),),

    ], ),
        bottomNavigationBar: ShopBottomNavigator(),
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.deepPurple[500],child: Icon(Icons.add),
          onPressed: ()=>(Navigator.pushNamed(context, '/third')

          ),),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: Drawer(child: ListView(children: <Widget>[ ListTile(
          leading: CircleAvatar(backgroundImage:  NetworkImage("https://i1.wp.com/codesundar.com/wp-content/uploads/2019/08/cropped-codesundar-favicon.png")),
          title: Text("Mina"),
          subtitle: Text(""),
        ),
          ListTile(leading: Icon(Icons.home), title: Text("Home")),
          ListTile(leading: Icon(Icons.grid_on), title: Text("Products")),
          ListTile(leading: Icon(Icons.contacts), title: Text("Contact Us")),

        ],),),

        body: Container(
          child: GridView.count(crossAxisCount:2,
            children: <Widget>[
              Card(child: InkWell(
                onTap: ()=> (Navigator.pushNamed(context, '/second')),
                splashColor: Colors.deepPurple[500],
                child: Column(children: <Widget>[
                  Text('محصولات',style: TextStyle(fontSize: 14,fontFamily: 'Bamshad',color: Colors.black)),
                  Expanded(child: FittedBox(
                      fit: BoxFit.fill,
                      child:Icon(Icons.widgets,
                        color:Colors.deepPurple[500],)
                  ),)
                ],),
              ),),
              Card(child: InkWell(
                onTap: ()=> (Navigator.pushNamed(context, '/forth')),
                splashColor: Colors.blue[900],
                child: Column(children: <Widget>[
                  Text('اخبار',style: TextStyle(fontSize: 14,fontFamily: 'Bamshad',color: Colors.black)),
                  Expanded(child: FittedBox(
                      fit: BoxFit.fill,
                      child:Icon(Icons.info_outline,
                        color:Colors.blue[900],)
                  ),)
                ],),
              ),),
              Card(child: InkWell(
                onTap: ()=> (Navigator.pushNamed(context, '/fifth')),
                splashColor: Colors.red,
                child: Column(children: <Widget>[
                  Text('قوانین',style: TextStyle(fontSize: 14,fontFamily: 'Bamshad',color: Colors.black)),
                  Expanded(child: FittedBox(
                      fit: BoxFit.fill,
                      child:Icon(Icons.low_priority,
                        color:Colors.red,)
                  ),)
                ],),
              ),),
              Card(child: InkWell(
                onTap: ()=> (Navigator.pushNamed(context, '/sixth')),
                splashColor: Colors.red[900],
                child: Column(children: <Widget>[
                  Text('درباره ما',style: TextStyle(fontSize: 14,fontFamily: 'Bamshad',color: Colors.black)),
                  Expanded(child: FittedBox(
                      fit: BoxFit.fill,
                      child:Icon(Icons.description,
                        color:Colors.red[900],)
                  ),)
                ],),
              ),),
            ],),
        )
    );
  }

}
class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(centerTitle: true, title: Text(' محصولات', style: TextStyle(fontFamily: 'Bamshad', fontSize: 18, color: Colors.black45),),
      backgroundColor: Colors.white10,elevation: 0,actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search,color: Colors.black45,),
          onPressed: (){},
        )
      ], ),

    );

  }

}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('افزودن به سبد خرید',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}
class ForthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('اخبار',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}
class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('قوانین',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}
class SixthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('درباره ما',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}
class SevenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('خانه',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}
class EightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,title: Text('پروفایل',style: TextStyle(color: Colors.blueGrey,fontFamily: "Bamshad"),), backgroundColor: Colors.black12, elevation:0,actions: <Widget>[
      IconButton(icon: Icon(Icons.person,color: Colors.black45,),)], ),

        bottomNavigationBar: LoginPage());
  }
}
class NineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('تماس با ما',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}
class TenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,backgroundColor: Colors.white12,elevation:0,title: Text('لیست خرید های من',style: TextStyle(fontFamily: 'Bamshad',fontSize: 18,color: Colors.black45),),),);
  }
}


class ElevenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(centerTitle: true,title: Text('سرچ',style: TextStyle(color: Colors.blueGrey,fontFamily: "Bamshad"),), backgroundColor: Colors.black12, elevation:0,actions: <Widget>[
      IconButton(icon: Icon(Icons.search,color: Colors.black45,),)], ),

        bottomNavigationBar: Search_Bar()

    );
  }
}
