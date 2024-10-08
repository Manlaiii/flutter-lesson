import 'package:flutter/material.dart';
import 'package:movie_app/models/movie/index.dart';

class MovieDetailPage extends StatelessWidget {
  final MovieModel data;

  const MovieDetailPage(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 34, 37),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  width: width,
                  height: width * 1.5,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        data.imgUrl,
                        fit: BoxFit.fill,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.play_circle,
                              color: Colors.grey.withOpacity(0.5),
                              size: 60,
                            ),
                            SizedBox(height: 50),
                            Text(
                              data.title,
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "${data.publishedYear} | ${data.durationMin} | ${data.type}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff777777),
                              ),
                            ),
                            SizedBox(height: 70),
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Тайлбар",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      data.description ?? '',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
