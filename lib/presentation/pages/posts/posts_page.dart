

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:placeholderapi/presentation/controllers/posts_page_controller.dart';

class  PostsPage extends StatelessWidget {
   static const routeName = '/posts/page';

   PostsPage ({Key, key}) : super(key: key);

   PostsController _controller;

  @override
  Widget build(BuildContext context) {
     _controller = PostsController();
    return  Scaffold(
      appBar: AppBar(
        title: GetBuilder<PostsController>(
          init: _controller,
          builder: (_){
            return Text(_.titlePage);
          },
        )
      ),
      body: GetBuilder<PostsController>(
        init: _controller,
        builder: (_){
          return ListView.builder(
              itemCount:_.posts.length ,
              itemBuilder:(context, i){
                return Container(
                  margin: EdgeInsets.all(10.0),
                  height: 250,
                  width: 300,
                  child:Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 40.0,bottom: 10.0),
                              height: 90,
                                width: 250,
                                child: Text(_.posts[i].title, style:TextStyle(fontSize: 17, fontWeight: FontWeight.w500),textAlign: TextAlign.justify,)),
                            Container(
                                padding: EdgeInsets.only( right: 30),
                                child: Text("ID: ${_.posts[i].id.toString()}")),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top:20.0),
                          child: Text(_.posts[i].body,style: TextStyle(color: Colors.blue),),
                        )
                      ],
                    ),
                  ),
                );
              }
          );
        },
      ),

    );
  }
}
