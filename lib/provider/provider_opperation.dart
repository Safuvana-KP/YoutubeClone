import 'package:flutter/cupertino.dart';
import 'package:untitled1/data.dart';
import 'package:untitled1/provider/provider_service.dart';
import 'package:flutter/material.dart';

class ProviderOperation extends ChangeNotifier{
  final _service= ProviderService();
  bool isLoading=false;
  List<Video> _videos=[];
  List<Video> get videos => _videos;



 Future<void> getAllVideos() async {
    isLoading = true;
    notifyListeners();
    final response = await _service.getAll();
    _videos = response;
    isLoading = false;
    notifyListeners();
  }


}