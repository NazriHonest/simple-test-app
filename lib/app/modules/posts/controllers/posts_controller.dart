import 'package:get/get.dart';
import 'package:load_posts/app/modules/posts/providers/posts_provider.dart';

class PostsController extends GetxController {
  //TODO: Implement PostsController

  PostsProvider postsProvider = Get.find<PostsProvider>();
  var photos = [].obs;
  var loading = false.obs;


  @override
  void onInit() {
    super.onInit();
    loadPhotos();
  }

  loadPhotos() async {
    loading(true);
    photos(await postsProvider.loadPhotos());
    loading(false);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
