import 'package:allinoneeducation/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderf;
  HomeProvider? homeProvidert;

  @override
  Widget build(BuildContext context) {
    homeProviderf = Provider.of<HomeProvider>(context, listen: false);
    homeProvidert = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 50,
              alignment: Alignment.center,
              child: Text("All in one Education",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75),bottomRight: Radius.circular(75)),
                color: Colors.black,
                boxShadow: [
                  BoxShadow(color: Colors.white12,spreadRadius: 2,blurRadius: 5,offset: Offset(0, 2))
                ]
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: homeProviderf!.img.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    homeProviderf!.chi(index);
                    Navigator.pushNamed(context, 'second');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(3),
                            child: Image.network("${homeProviderf!.img[index].img}",
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text("${homeProviderf!.img[index].name}",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
