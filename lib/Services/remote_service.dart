import 'package:api_app/Models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService
{
  Future <List<Post>?> getPosts() async {
    var Client = http.Client();


    var uri =Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await Client.get(uri);
    if(response.statusCode ==200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}