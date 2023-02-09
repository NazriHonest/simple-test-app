import 'package:get/get.dart';
import 'package:load_posts/app/modules/posts/providers/posts_provider.dart';

import '../controllers/posts_controller.dart';

class PostsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostsController>(
      () => PostsController(),
    );
    Get.lazyPut<PostsProvider>(
      () => PostsProvider(),
    );
  }
}
