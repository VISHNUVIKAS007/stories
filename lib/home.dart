import 'package:flutter/material.dart';
import 'data.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final appBar=AppBar(
      elevation: .5,
      title: Text(
        'LITTLE STORIES',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.normal,
          decorationStyle: TextDecorationStyle.solid,
        ),
      ),
      backgroundColor: Colors.redAccent,
      /*actions: <Widget>[
        IconButton(
          icon: Icon(Icons.),
        ),
      ],*/
    );
    createTile(Stories stories)=>Hero(
      tag: stories.title,
      child: Material(
        elevation: 15.0,
        shadowColor: Colors.red.shade900,
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, 'detail/${stories.title}');
          },
          child: Image(image: AssetImage(stories.image),
          fit:BoxFit.cover,),
        ),
      ),
    );
    final grid=CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
              crossAxisCount: 1,
          childAspectRatio: 3/2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 10.0,
            children: story.map((stories)=> createTile(stories)).toList(),

          ),
        ),
      ],
    );
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: appBar,
      body: grid,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'LITTLE STORIES',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    height: 3,
                    fontStyle: FontStyle.normal,
                    fontSize: 20),
              ),
              decoration: BoxDecoration(color: Colors.redAccent),
              padding: EdgeInsets.all(20),
            ),
            /*ListTile(
              title: Text('Vishnu'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Manjeri'),
              onTap: () {},
            ),*/
            ListTile(
              leading: Icon(Icons.info),
              title: Text('ABOUT',style: TextStyle(fontSize: 15,fontStyle: FontStyle.normal),textAlign: TextAlign.justify,),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

}