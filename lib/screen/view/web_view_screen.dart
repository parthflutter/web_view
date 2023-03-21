import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_view/screen/provider/web_provider.dart';

class web_screen extends StatefulWidget {
  const web_screen({Key? key}) : super(key: key);

  @override
  State<web_screen> createState() => _web_screenState();
}
Web_view_provider? web_view_providerT,web_view_providerF;
class _web_screenState extends State<web_screen> {

  @override
  Widget build(BuildContext context) {
    web_view_providerF=Provider.of<Web_view_provider>(context,listen: false);
    web_view_providerT=Provider.of<Web_view_provider>(context,listen: true);
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Mutiple Apps"),
        centerTitle: true,
      ),
    body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 196, ),itemCount: 10, itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            Navigator.pushNamed(context, 'web_screen2');
            web_view_providerF!.loadurl(index);
          },
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset("${web_view_providerF!.images[index]}",fit: BoxFit.cover,),
                Spacer(),
                Text("${web_view_providerF!.name[index]}"),
              ],
            ),
          ),
        );
      },
    ),
    )
    );
  }
}
