import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/data.dart';
import 'package:untitled1/widgets/videoCard.dart';

import '../provider/provider_opperation.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {

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
        leadingWidth: 100.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset(
            'assets/yt_logo.png',
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cast,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 80,
                    child: const Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: NetworkImage(
                              'https://tse4.mm.bing.net/th?id=OIP.U6GW06NHJECTs9zg1YDHeAHaEK&pid=Api&P=0&h=220'),
                        ),
                        Text(
                          'My Traveldiary',
                          style: TextStyle(fontSize: 15),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 05,
                  ),
                  Container(
                    width: 80,
                    child: const Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: NetworkImage(
                              'https://tse4.mm.bing.net/th?id=OIP.U6GW06NHJECTs9zg1YDHeAHaEK&pid=Api&P=0&h=220'),
                        ),
                        Text(
                          'My Traveldiary',
                          style: TextStyle(fontSize: 15),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 05,
                  ),
                  Container(
                    width: 80,
                    child: const Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: NetworkImage(
                              'https://tse4.mm.bing.net/th?id=OIP.U6GW06NHJECTs9zg1YDHeAHaEK&pid=Api&P=0&h=220'),
                        ),
                        Text(
                          'My Traveldiary',
                          style: TextStyle(fontSize: 15),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 05,
                  ),
                  Container(
                    width: 80,
                    child: const Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: NetworkImage(
                              'https://tse4.mm.bing.net/th?id=OIP.U6GW06NHJECTs9zg1YDHeAHaEK&pid=Api&P=0&h=220'),
                        ),
                        Text(
                          'My Traveldiary',
                          style: TextStyle(fontSize: 15),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 05,
                  ),
                  Container(
                    width: 80,
                    child: const Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: NetworkImage(
                              'https://tse4.mm.bing.net/th?id=OIP.U6GW06NHJECTs9zg1YDHeAHaEK&pid=Api&P=0&h=220'),
                        ),
                        Text(
                          'My Traveldiary',
                          style: TextStyle(fontSize: 15),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 05,
                  ),
                  const SizedBox(
                    width: 80,
                    child: Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: NetworkImage(
                              'https://tse4.mm.bing.net/th?id=OIP.U6GW06NHJECTs9zg1YDHeAHaEK&pid=Api&P=0&h=220'),
                        ),
                        Text(
                          'My Traveldiary',
                          style: TextStyle(fontSize: 15),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: FilterChip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      label: const Text('All'),
                      elevation: 0,
                      onSelected: (bool value) {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: FilterChip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      label: const Text('Today'),
                      elevation: 0,
                      onSelected: (bool value) {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: FilterChip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      label: const Text('Videos'),
                      elevation: 0,
                      onSelected: (bool value) {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: FilterChip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      label: const Text('Shorts'),
                      elevation: 0,
                      onSelected: (bool value) {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: FilterChip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      label: const Text('Live'),
                      elevation: 0,
                      onSelected: (bool value) {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
    Consumer<ProviderOperation>(
    builder: (context,value,child){
    if (value.isLoading){
    return Center(child: const CircularProgressIndicator());
    }
    final videos=value.videos;
    return ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: videos.length,
                itemBuilder: (BuildContext context, index) {
                  final video = videos[index];
                  return VideoCard(video: video);
                });}),
          ],
        ),
      ),
    );
  }
}
