import 'package:flutter/material.dart';
import 'data.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final appBar=AppBar(
      elevation: .5,
      backgroundColor: Colors.white,
      /*leading: IconButton(
        //icon: Icon(Icons.menu,color: Colors.black,), onPressed: () {}
      ),*/
      title: Text('STORIES',style: TextStyle(color: Colors.black),),
      actions: <Widget>[
        /*IconButton(
          icon: Icon(Icons.search,color: Colors.black,),
          onPressed: (){},
        ),*/
      ],
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
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('STORIES',
                textAlign: TextAlign.center,

                style: TextStyle(fontSize: 24,color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),

            ),
            ListTile(
              title: Text('Item1'),
            ),
            ListTile(
              title: Text('item2'),
            ),
          ],
        ),
      ),
    );
  }

}