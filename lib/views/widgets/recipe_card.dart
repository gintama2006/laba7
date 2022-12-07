import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String rating;
  final String cookTime;
  final String thumbnailUrl;
  RecipeCard({
     this.title,
     this.cookTime,
     this.rating,
     this.thumbnailUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: const Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 180,
                    child: Image.network(thumbnailUrl, alignment: Alignment.centerLeft, fit: BoxFit.fill),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    width: 250,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                textAlign: TextAlign.center,
                              ),
                              width: 100,
                              padding: EdgeInsets.only(bottom: 10),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    const SizedBox(width: 7),
                                    Text(rating),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.schedule,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    const SizedBox(width: 7),
                                    Text(cookTime),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )

                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}