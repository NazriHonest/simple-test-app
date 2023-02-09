import 'package:get/get.dart';

class PostsProvider extends GetConnect {
  @override
  void onInit() {
  }

  Future loadPhotos() async {
    var response = await get("https://jsonplaceholder.typicode.com/comments");
    return response.body;
  }
}
