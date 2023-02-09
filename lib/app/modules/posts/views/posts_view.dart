import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/posts_controller.dart';

class PostsView extends GetView<PostsController> {
  const PostsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test URL for Comments'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.loading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (controller.photos.isEmpty) {
          return const Center(child: Text("No Photos Found!"));
        }
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.builder(
              itemCount: controller.photos.length,
              itemBuilder: ((context, index) => Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 232, 234, 235),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 130,
                          padding: const EdgeInsets.only(top: 50),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            // image: DecorationImage(
                            //   image: NetworkImage(controller.photos[index]['thumbnailUrl']),
                            // ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            controller.photos[index]['body'],
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            controller.photos[index]['email'],
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ))),
        );
      }),
    );
  }
}
