import 'dart:convert';

import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:untitled1/data.dart';

import '../data.dart';

class ProviderService{
 Future<List<Video>> getAll() async{
    const url = 'https://gist.githubusercontent.com/poudyalanil/ca84582cbeb4fc123a13290a586da925/raw/14a27bd0bcd0cd323b35ad79cf3b493dddf6216b/videos.json' ;
 final uri=Uri.parse(url);
 final response =await http.get(uri);
 if(response.statusCode==200){
   final json = jsonDecode(response.body) as List;
   final videos = json.map((e)=> Video(
    id: e['id'],
    authorUrl:e['authorUrl'],
     author: e['author'],
     title: e['title'],
     thumbnailUrl: e['thumbnailUrl'],
     duration: e['duration'],
     uploadTime: e['uploadTime'],
     views: e['views'],
     likes: e['likes'],
     dislikes: e['dislikes'],
     subscriber: e['subscriber'],
     videoUrl: e['videoUrl'] ,
   )).toList();
   return videos;
 }
 return [];

  }



  }
