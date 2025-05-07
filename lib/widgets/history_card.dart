import 'package:flutter/material.dart';
import 'package:untitled1/data.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key, required  this.video});
  final Video video;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.network(video.thumbnailUrl),
            ),
            const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text(video.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 14.0),),
                       Text(video.author,
                         maxLines: 1,
                         overflow: TextOverflow.ellipsis,
                         style: const TextStyle(fontSize: 13.0,
                         fontWeight: FontWeight.w300),
                       ),
                      ],
                    ),
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
