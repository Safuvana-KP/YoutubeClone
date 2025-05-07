import 'package:flutter/material.dart';
import 'package:untitled1/data.dart';
import 'package:timeago/timeago.dart'as timeago;

class VideoInfo extends StatelessWidget {
  final Video video;
  const VideoInfo({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        Text(video.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 17.0,fontWeight: FontWeight.w800),),
        SizedBox(height: 8.0,),
        Text('${video.views}views . ${timeago.format(video.uploadTime)}',style:
          const TextStyle(fontSize: 14.0),),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           GestureDetector(
             child: Column(
               children: [
                 Icon(Icons.thumb_up_outlined),
                 Text(video.likes),
               ],
             ),
           ),
            GestureDetector(
              child: Column(
                children: [
                  Icon(Icons.thumb_down_outlined),
                  Text(video.dislikes),
                ],
              ),
            ),
            GestureDetector(
              child: Column(
                children: [
                  Icon(Icons.reply_outlined),
                  Text('share'),
                ],
              ),
            ),
            GestureDetector(
              child: Column(
                children: [
                  Icon(Icons.download_outlined),
                  Text('download'),
                ],
              ),
            ),
            GestureDetector(
              child: Column(
                children: [
                  Icon(Icons.library_add_outlined),
                  Text('save'),
                ],
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              foregroundImage: NetworkImage(
                  'http://webneel.com/wallpaper/sites/default/files/images/01-2018/4-beautiful-flower-wallpaper-hd-saxyman.jpg'),
            ),
            SizedBox(width: 8.0,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(video.author,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14.0),
                  ),
                  Text("${video.subscriber} subscribers ",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 11.0,color: Colors.white60),),

                ],
              ),
            ),
            TextButton(
                onPressed: (){},
                child:Text('SUBSCRIBE',style: TextStyle(color: Colors.red),)
            ),
          ],
        )
      ],
    );
  }
}
