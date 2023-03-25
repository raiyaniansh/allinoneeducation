import 'package:allinoneeducation/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(context,listen: false).initConatroller();
  }

  HomeProvider? secondProviderf;
  HomeProvider? secondProvidert;

  @override
  Widget build(BuildContext context) {
    secondProviderf = Provider.of<HomeProvider>(context, listen: false);
    secondProvidert = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: secondProviderf!.webViewController!),
      ),
    );
  }
}
