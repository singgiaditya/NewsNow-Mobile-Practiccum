import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/detail_news.dart';
import 'package:myapp/models/news_model.dart';
import 'package:myapp/core/themes/mycolors.dart';

class NewsWidget extends StatelessWidget {
  final NewsModel data;
  const NewsWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailNews(
            data: NewsModel(
                title: data.title,
                content: data.content,
                image: data.image,
                author: data.author,
                publishedAt: data.publishedAt),
          );
        }));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${data.publishedAt}",
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: darkColor.withOpacity(0.8),
                  fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    "${data.title}",
                    style: GoogleFonts.poppins(
                        color: darkColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  height: 78,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("${data.image}"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
            Icon(
              Icons.bookmark_outline_rounded,
              color: darkColor.withOpacity(0.8),
            )
          ],
        ),
      ),
    );
  }
}
