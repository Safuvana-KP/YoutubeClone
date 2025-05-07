import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data.dart';
import '../provider/provider_opperation.dart';
import '../widgets/history_card.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp){
      Provider.of<ProviderOperation>(context,listen: false).getAllVideos();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    foregroundImage: NetworkImage('https://tse3.mm.bing.net/th?id=OIP.aDIL4mBD-YQJWl6kzH0uBgHaHa&pid=Api&P=0&h=220'),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('My vlog',style: TextStyle(
                        fontSize: 30,color: Colors.white,
                      ),),
                      Row(
                        children: [
                          Text('@Myvlog20',style: TextStyle(
                            fontSize: 13,color: Colors.white,
                          ),),
                          SizedBox(width: 10,),
                          Text('.',style: TextStyle(
                            fontSize: 13,color: Colors.white,
                          ),),
                          SizedBox(width: 10,),
                          Text('View channel',style: TextStyle(
                            fontSize: 13,color: Colors.white,
                          ),),
                          Icon(Icons.arrow_forward_ios,size: 13,),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        label:Row(
                          children: [
                            Icon(Icons.person),
                            Text('Switch account'),
                          ],
                        ) ,
                        elevation: 0,
                        onSelected: (bool value) {  },),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        label:Row(
                          children: [
                            Icon(Icons.g_mobiledata_outlined),
                            Text('Google account'),
                          ],
                        ) ,
                        elevation: 0,
                        onSelected: (bool value) {  },),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        label:Row(
                          children: [
                            Icon(Icons.attribution_rounded),
                            Text('Turn on Incognito'),
                          ],
                        ) ,
                        elevation: 0,
                        onSelected: (bool value) {  },),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        label:Row(
                          children: [
                            Icon(Icons.share),
                            Text('Share channel'),
                          ],
                        ) ,
                        elevation: 0,
                        onSelected: (bool value) {  },),
                    ),
                  ],
                ),
              ),
          SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('History',style: TextStyle(fontSize: 20),),
                FilterChip(
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  label: Text('View all'),
                  onSelected: (bool){},
                )
                ],
              ),
              SizedBox(height: 8,),
              SizedBox(
                width: double.infinity,
                height: 250,
    child: Consumer<ProviderOperation>(
    builder: (context,value,child){
    if (value.isLoading){
    return Center(child: const CircularProgressIndicator());
    }
    final videos=value.videos;
    return ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                    itemCount: videos.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(BuildContext context,index) {
                      final video = videos[index];
                      return HistoryCard(video: video,);
                    });})
              ),
              SizedBox(height: 20,),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Playlists',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    const Icon(Icons.add,color: Colors.white,),
                    FilterChip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                        label: const Text('View all'), onSelected: (bool){}),
                  ],
                )
              ),
             const Padding(padding: EdgeInsets.only(right: 3,left: 6,top: 20,bottom: 10),
               child: Column(
                 children: [
                   Row(
                     children: [
                       Icon(Icons.play_circle),
                       SizedBox(width: 10,),
                       Text('Your Videos',style: TextStyle(
                         fontSize: 17,fontWeight: FontWeight.w300,
                       ),),
                     ],
                   ),
                   SizedBox(height: 20,),
                   Row(
                     children: [
                       Icon(Icons.arrow_circle_down),
                       SizedBox(width: 10,),
                       Text('Downloads',style: TextStyle(
                         fontSize: 17,fontWeight: FontWeight.w300,)),
                     ],
                   ),
                   SizedBox(height: 20,),
                   Row(
                     children: [
                       Icon(Icons.movie),
                       SizedBox(width: 10,),
                       Text('Your movies',style: TextStyle(
                         fontSize: 17,fontWeight: FontWeight.w300,)),
                     ],
                   ),
                   SizedBox(height: 20,),
                   Row(
                     children: [
                       Icon(Icons.graphic_eq),
                       SizedBox(width: 10,),
                       Text('Time watched',style: TextStyle(
                         fontSize: 17,fontWeight: FontWeight.w300,)),
                     ],
                   ),
                   SizedBox(height: 20,),
                   Row(
                     children: [
                       Icon(Icons.help),
                       SizedBox(width: 10,),
                       Text('Help and feedback',style: TextStyle(
                         fontSize: 17,fontWeight: FontWeight.w300,)),
                     ],
                   ),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
