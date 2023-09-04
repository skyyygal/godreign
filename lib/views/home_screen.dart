import 'package:flutter/material.dart';
import 'package:godreign/utils/constant.dart';

import '../widgets/common_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.black,
                Color(0xFF080811),
                Color(0xFF161621),
                Color(0xFF080811),
                Colors.black,
              ],
            ),
            image: DecorationImage(
              image: AssetImage(Constants.background),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _buildTopStack(w),
                _buildTitleAndCategories(),
                _buildLatestMatches(),
                _buildLatestShows(),
                _buildTrendingClips(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopStack(double w) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Stack(
          children: <Widget>[
            DecoratedBox(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xFF080811),
                    Color(0xFF161621),
                  ],
                ),
              ),
              child: Image.asset(
                Constants.trophy,
                width: w,
                fit: BoxFit.fitWidth,
              ),
            ),
            const Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.video_call_outlined,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          right: 145,
          left: 145,
          top: 340,
          bottom: 30,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow),
            label: const Text('PLAY'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTitleAndCategories() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Taiwan Excellence Gaming Cup 2022',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Pokemon', style: TextStyle(color: Colors.grey)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 10,
                width: 1,
                child: Container(
                  color: Colors.grey,
                ),
              ),
            ),
            const Text('Gods Reign', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }

  Widget _buildLatestMatches() {
    return Column(
      children: [
        SectionHeaderRow(
          title: 'Latest Matches',
          viewAll: 'View all',
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            height: 251,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemExtent: 352,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color.fromARGB(255, 39, 37, 37),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              child: const Text('VALORANT'),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Friday, October 2022',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: Image.asset(Constants.playerOne),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              '2:0',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: Image.asset(Constants.playerTwo),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'Volarant India Invitational by Galaxy Racer',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          'India qualifies #2',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.play_arrow),
                              label: const Text('PLAY'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLatestShows() {
    return Column(
      children: [
        SectionHeaderRow(
          title: 'Latest Shows',
          viewAll: 'View all',
        ),
        SizedBox(
          height: 260,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                margin: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        Constants.thumbnail,
                        width: 150,
                        height: 190,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text(
                      'Pubg mobile india',
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      '95.1k views',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTrendingClips() {
    return Column(
      children: [
        SectionHeaderRow(
          title: 'Trending Clips',
          viewAll: 'View all',
        ),
        SizedBox(
          height: 260,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return ReusableCard(
                imagePath: Constants.thumbnailTwo,
                name: 'Gods Ember',
                views: '95.1k views',
              );
            },
          ),
        ),
      ],
    );
  }
}
