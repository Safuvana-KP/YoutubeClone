import 'package:flutter/material.dart';
import 'dart:convert';


class Video {
  final String id;
  final String author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final String uploadTime;


  final String views;
  final String subscriber;
  final String videoUrl;

  const Video( {
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.uploadTime,
    required this.views,


    required this.subscriber,
    required this.videoUrl,
  });
factory Video.fromJson(Map<String,dynamic>json){
  return Video(
      id: json['id']as String,
      author: json['author']as String,
      thumbnailUrl: json['thumbnailUrl']as String,
      uploadTime: json['uploadTime']as String,
      duration: json['duration']as String,
      views: json['views']as String,


      subscriber: json['subscriber']as String,
      videoUrl: json['videoUrl']as String,
      title: json['title']as String,

  );
}

}

