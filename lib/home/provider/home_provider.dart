import 'package:allinoneeducation/home/modal/home_modal.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier
{
  List<dModal> img=[
    dModal(name: 'Wikipedia',link: 'https://www.wikipedia.org/',img: 'https://tse1.mm.bing.net/th?id=OIP.fcbw-fY7qLnNJHvJq38yjgHaHa&pid=Api&P=0'),
    dModal(name: 'W3Schools',link: 'https://www.w3schools.com/',img: 'https://tse2.mm.bing.net/th?id=OIP.D0wK0UDC_NqilQsbwm7kwAAAAA&pid=Api&P=0'),
    dModal(name: 'Javatpoint',link: 'https://www.javatpoint.com/',img: 'https://tse1.mm.bing.net/th?id=OIP.bhkTf11KntoRSoeJg9xGDQAAAA&pid=Api&P=0'),
    dModal(name: 'Tutorialspoint',link: 'https://www.tutorialspoint.com/',img: 'https://tse1.mm.bing.net/th?id=OIP.pBYh8IJS1-RL0AR8VfxKRgAAAA&pid=Api&P=0')
    ];

  int i = 0;

  WebViewController? webViewController;

  void initConatroller()
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse('${img[i].link}'));
  }

  void chi(index)
  {
    i=index;
    notifyListeners();
  }
}