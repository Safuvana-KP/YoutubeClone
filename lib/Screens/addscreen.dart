import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddScreen extends StatefulWidget {
   AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
   final ImagePicker picker = ImagePicker();

   File? _image;

   Future<void> _getImageFromGallery() async{
     final XFile? galleryImage = await picker.pickImage(source: ImageSource.gallery);
     
     if (galleryImage != null){
       setState(() {
         _image=File(galleryImage.path);
       });
     }else{
       print('no image');
     }
   }


   Future<void> _getImageFromCamera() async{
     final XFile? cameraImage = await picker.pickImage(source: ImageSource.camera);

     if (cameraImage != null){
       setState(() {
         _image=File(cameraImage.path);
       });
     }else{
       print('no image');
     }
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

          width: double.infinity,
          height: 200,
          child: _image == null ? Center(child: const Text('select image')): Image.file(_image!),
        ),
      ),
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: (){
              _getImageFromGallery();
            },
            child: Text('Video'),
          ),
          ElevatedButton(
            onPressed: (){
              _getImageFromCamera();
            },
            child: Text('Live'),
          ),
        ],),
    );
  }
}
