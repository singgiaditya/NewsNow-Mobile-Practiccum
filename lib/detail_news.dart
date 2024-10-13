import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/news_model.dart';
import 'package:myapp/core/themes/mycolors.dart';

class DetailNews extends StatelessWidget {
  final NewsModel data;

  DetailNews({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: darkColor,
              width: double.infinity,
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 18,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark_outline,
                              color: Colors.white,
                              size: 20,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Singgi Aditya",
                        style: GoogleFonts.poppins(
                            fontSize: 12, color: Colors.white)),
                    Text("${data.title}",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            data.image != null
                ? Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("${data.image}"),
                            fit: BoxFit.cover)),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Text(
                "${data.content}",
                style: GoogleFonts.lora(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
