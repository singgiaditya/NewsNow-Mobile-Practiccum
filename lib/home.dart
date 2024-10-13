import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/core/service/fetching_news.dart';
import 'package:myapp/news_widget.dart';
import 'package:myapp/core/themes/mycolors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "NewsNow",
            style: GoogleFonts.lora(
              color: darkColor,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: FutureBuilder(
              future: FetchingNews.getNews(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      margin: EdgeInsets.zero,
                      elevation: 10,
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage("https://picsum.photos/1600"),
                              fit: BoxFit.cover),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: darkColor.withOpacity(0.5)),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Fintech 50 2022: The Newcomers",
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Latest",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: darkColor.withOpacity(0.5)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListView.separated(
                      itemCount: snapshot.data!.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 40,
                          thickness: 0.7,
                        );
                      },
                      itemBuilder: (context, index) {
                        return NewsWidget(
                          data: snapshot.data![index],
                        );
                      },
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                );
              },
            ),
          ),
        ));
  }
}
