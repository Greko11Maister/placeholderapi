import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placeholderapi/presentation/controllers/post_detail_controller.dart';

// ignore: must_be_immutable
class DetailPostPage extends StatelessWidget {
  final int postId;
  PostDetailController _controller;

  DetailPostPage({Key key, @required this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _controller = PostDetailController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle del Articulo $postId}"),
      ),
      body: Column(children: [
        GetBuilder<PostDetailController>(
            init: _controller,
            initState: (_){
              _controller.loadPostId(postId);
            },
            builder: (_) {
          return ListTile(
            title: Text(_.post.title),
            trailing: Container(
              padding: EdgeInsets.all(8),
              color: Colors.blue,
              child: Text("ID ${_.post.id}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            subtitle: Text(_.post.body),
          );
        }),

        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (ctx, i) {
              return ListTile(
                title: Text("Comentario $i id articulo $postId"),
              );
            },
          ),
        )
      ],),
    );
  }
}
