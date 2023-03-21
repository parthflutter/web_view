import 'package:flutter/foundation.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Web_view_provider extends ChangeNotifier {

WebViewController?webViewController;
  List images = [
    "assets/limages/1.jpg",
    "assets/limages/2.jpg",
    "assets/limages/3.jpg",
    "assets/limages/4.jpg",
     "assets/limages/5.jpg",
    "assets/limages/6.jpg",
    "assets/limages/7.jpg",
    "assets/limages/8.jpg",
    "assets/limages/9.jpg",
    "assets/limages/10.jpg",

  ];

  List name = [
    "Messho",
    "Shop C",
    "Flipkart",
    "Amazon",
    "Alibaba",
    "Macdonald",
    "Reliance Smart",
    "Pizza Hut",
    "D Mart",
    "Swiggy",
  ];


  List urls=[
    "https://www.meesho.com/",
    "https://www.shopsy.in/",
    "https://www.flipkart.com/",
    "https://www.amazon.in/",
    "https://www.alibaba.com/",
    "https://www.mcdonalds.com/",
    "https://www.reliancedigital.in/",
    "https://www.pizzahut.co.in/",
    "https://www.dmartindia.com/",
    "https://www.swiggy.com/",
  ];

  void loadurl(int index)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${urls[index]}"));
  }
}