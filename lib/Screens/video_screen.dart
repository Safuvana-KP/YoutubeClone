import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/data.dart';
import 'package:untitled1/widgets/videoCard.dart';
import 'package:video_player/video_player.dart';
import '../provider/provider_opperation.dart';
import '../widgets/video_info.dart';

class VideoScreen extends StatefulWidget {
  final Video video;
  const VideoScreen({super.key, required this.video});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {


  late VideoPlayerController _controller;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp){
      Provider.of<ProviderOperation>(context,listen: false).getAllVideos();
    });

    super.initState();

    _controller = VideoPlayerController.networkUrl(
     Uri.parse(widget.video.videoUrl),

    );
    log(widget.video.videoUrl,name: 'videoUrl');

    _controller.initialize().then((_){
      setState(() {
        _controller.play();
      });
    });

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [

             AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                  ),

                  Positioned(
                    top: 5,
                   left: 5,
                   child : IconButton(
                      icon:Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                      iconSize: 30.0,
                      onPressed: () {  },),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: VideoProgressIndicator(_controller, allowScrubbing: true)),

                  IconButton(
                    alignment: Alignment.center,
                      onPressed:(){
                        setState(() {
                          _controller.value.isPlaying? _controller.pause() : _controller.play();
                        });
                      } ,
                      icon:Icon(
                        _controller.value.isPlaying?Icons.pause : Icons.play_arrow,color: Colors.white,size: 40,
                      ))
                ],
              ),

              VideoInfo(video: widget.video,),
              Divider(),

    Consumer<ProviderOperation>(
    builder: (context,value,child){
    if (value.isLoading){
    return Center(child: const CircularProgressIndicator());
    }
    final videos=value.videos;
                return ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: videos.length,
                  itemBuilder: (BuildContext context,index){
                    final video=videos[index];
                    return VideoCard(video: video,);
                  },
                );}),


            ],
          ),
        ),
      ),
    );
  }
}

