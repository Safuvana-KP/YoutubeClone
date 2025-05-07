import 'package:flutter/material.dart';
import 'dart:convert';


class Video {
  final String id;
  final String authorUrl;
  final String author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime uploadTime;
  final String views;
  final String likes;
  final String dislikes;
  final String subscriber;
  final String videoUrl;

  const Video( {
    required this.id,
    required this.authorUrl,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.uploadTime,
    required this.views,
    required this.likes,
    required this.dislikes,
    required this.subscriber,
    required this.videoUrl,
  });

}

