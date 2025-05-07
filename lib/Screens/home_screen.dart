import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data.dart';
import '../provider/provider_opperation.dart';
import '../widgets/videoCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp){
      Provider.of<ProviderOperation>(context,listen: false).getAllVideos();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leadingWidth: 100.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset('assets/yt_logo.png',color: Colors.white,),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.cast,color: Colors.white,),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications_outlined,color: Colors.white,),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search,color: Colors.white,),
          ),
          IconButton(
            onPressed: (){},
            icon:Icon(Icons.settings,color: Colors.white,),
          ),
        ],
      ),
      body:Consumer<ProviderOperation>(
        builder: (context,value,child){
          if (value.isLoading){
            return Center(child: const CircularProgressIndicator());
          }
          final videos=value.videos;
          return ListView.builder(
            shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: videos.length,
        itemBuilder:(BuildContext context,index) {
          final video = videos[index];
          return VideoCard(video: video);
        } );
        }
      ),


    );
  }
}
