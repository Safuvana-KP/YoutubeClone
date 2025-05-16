import 'package:flutter/material.dart';
import 'package:untitled1/Screens/video_screen.dart';
import 'package:untitled1/data.dart';
import 'package:timeago/timeago.dart'as timeago;


class VideoCard extends StatefulWidget {
  final Video video;
  const VideoCard({super.key, required this.video});

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>VideoScreen(video: widget.video,)));
      },
      child: Column(
        children: [
          Stack(
            children:[
              Image.network(widget.video.thumbnailUrl.toString(),
            errorBuilder: ( context,error,stackTrace){
                return Image.network('https://wallpapercave.com/wp/wp5773223.jpg');
            },

            height: 160,
            width: double.infinity,
            fit: BoxFit.cover,
            ),
              Positioned(
                bottom: 8.0,
                  right: 20.0,
                  child:Container(
                    padding: EdgeInsets.all(4.0),
                    color: Colors.black,
                      child: Text(widget.video.duration.toString(),
                        style:TextStyle(color: Colors.white,)
                        ),
                  ),

              )
         ] ),
          Padding(
            padding:EdgeInsets.all(12.0),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: CircleAvatar(
                    foregroundImage: NetworkImage(''),
                  ),
                ),
                SizedBox(width: 8.0,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(widget.video.title.toString(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text("${widget.video.author.toString()} . ${widget.video.views.toString()} views . ${widget.video.uploadTime }",
                      style: TextStyle(fontSize: 11.0,color: Colors.white60),),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                    child: Icon(Icons.more_vert,size: 20.0,)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
