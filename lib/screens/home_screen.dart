import 'package:basicflutter/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var category = [
    'Best Places',
    'Most Visited',
    'Favourites',
    'New Added',
    'Hotels',
    'Restaurants'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 160,
                              padding: EdgeInsets.all(20),
                              margin: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage("images/city${index + 1}.jpg"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.7),
                                    BlendMode.dstATop,
                                  ),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.bookmark_border_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "City Name",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        for (int i = 0; i < 6; i++)
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Text(
                              category[i],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(15),
                      child: InkWell(
                        onTap: () {
                          // Add action for container tap
                        },
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage("images/city${index + 1}.jpg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.8),
                                BlendMode.dstATop,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
