import 'dart:ui';

import 'package:flutter/material.dart';

class Movies {
  late final String title;
  late String image;
  late String director;
  late String ratings;
  late String duration;
  late Color colorr;


  Movies({
    required this.title,
    required this.image,
    required this.director,
    required this.ratings,
    required this.duration,
    required this.colorr,
  });
}

final List<Movies> movielist=[
  Movies(
      title: 'Joker',
      image: 'https://www.tallengestore.com/cdn/shop/products/Joker_-_Put_On_A_Happy_Face_-_Joaquin_Phoenix_-_Hollywood_English_Movie_Poster_3_de5e4cfc-cfd4-4732-aad1-271d6bdb1587.jpg?v=1579504979',
      director: 'Direct byTodd Phillips',
      ratings: '5.0',
      duration: "2h:42m",
    colorr: Colors.red
  ),
  Movies(
      title: 'Pathan',
      image: 'https://www.tallengestore.com/cdn/shop/products/Pathan-ShahRukhKhan-BollywoodHindiMoviePoster_d4846edc-20de-497e-ab2c-07a53e52e268.jpg?v=1675251724',
      director: ' Direct by Siddharth Anand',
      ratings: '5.0',
      duration:  "2h:10m",colorr: Colors.red
  ),
  Movies(
      title: 'Big',
      image: 'https://th.bing.com/th/id/OIP.iI2aj86SQL84nK_xX7JZrgHaLH?w=204&h=306&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      director: 'Direct by Penny Marshall',
      ratings: '4.6',
      duration: "1h:45m",colorr: Colors.red),
  Movies(
      title: 'KEVIN & PERRY',
      image: 'https://th.bing.com/th/id/OIP.z-ZoSKsGRBJM6UAbP0rbjQHaKX?w=123&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      director: 'Direct by Ed Bye',
      ratings: '4.0',
      duration: "1h:22m",colorr: Colors.red)
];
