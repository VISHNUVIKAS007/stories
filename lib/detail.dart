import 'data.dart';
import 'package:flutter/material.dart';
class Detail extends StatelessWidget{
  final Stories stories;
  Detail(this.stories);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: .5,
      title: Text('Stories'),
      actions: <Widget>[
        /*IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),*/
      ],
    );
    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Hero(tag: stories.title, child: Material(
            elevation: 15.0,
            shadowColor: Colors.red.shade800,
            child: Image(image: AssetImage(stories.image),
              fit: BoxFit.cover,
            ),

          ),
          ),
        ),
      ],
    );
    final topRight=Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(stories.title,size:16,isBold:true,padding:EdgeInsets.only(top:16.0)),
        text(
          'by ${stories.author}',
          color:Colors.black54,
          size:12,padding:EdgeInsets.only(top: 8.0,bottom:16.0),
        ),
      ],
    );
    final topContent =Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2,child: topLeft,),
          Flexible(flex: 3,child: topRight,),
        ],
      ),
    );
    final bottomContent=Container(
      height: 390.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 16.0,left: 16.0),
        child: Text(stories.story,
        style:TextStyle(fontSize: 16.0,height: 1.5),
          overflow: TextOverflow.fade,
        ),
      ),


    );
    return Scaffold(
      appBar: appBar,

      body: Column(
        children: <Widget>[
          topContent,
          bottomContent,
        ],
      ),
    );
  }
  text(String data,{Color color=Colors.black54,num size=14,EdgeInsetsGeometry padding =EdgeInsets.zero,
  bool isBold=false,
  })=>Padding(
    padding: padding,
    child: Text(data,
    style: TextStyle(
      color: color,
      fontSize: size.toDouble(),
      fontWeight: isBold ? FontWeight.bold :FontWeight.normal
    ),
    ),
  );




}