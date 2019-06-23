import 'package:flutter/material.dart';
import 'HotMovieItemWidget.dart';
import 'HotMovieDate.dart';

class HotMoviesListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HotMoviesListWidgetState();
  }
}

class HotMoviesListWidgetState extends State<HotMoviesListWidget> {
  List<HotMovieData> hotMovies = new List<HotMovieData>();

  @override
  void initState() {
    super.initState();
    var data = HotMovieData('千と千尋', 9.9, '宫崎骏', ' 柊瑠美/入野自由/夏目真理', 999,
        'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2557573348.webp');
    setState(() {
      hotMovies.add(data);
      hotMovies.add(data);
      hotMovies.add(data);
      hotMovies.add(data);
      hotMovies.add(data);
      hotMovies.add(data);
    });
  }

  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.separated(
          itemCount: hotMovies.length,
          itemBuilder: (context, index) {
            return HotMovieItemWidget(hotMovies[index]);
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 1,
              color: Colors.black26,
            );
          },
        ));
  }
}
