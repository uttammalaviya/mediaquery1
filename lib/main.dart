import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:first(),));
}
class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {


    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double appbarheight = kToolbarHeight;
    double bottombarheight = MediaQuery.of(context).padding.bottom;
    double statusbarheight =  MediaQuery.of(context).padding.top;
    double bodyheight = height-appbarheight-bottombarheight-statusbarheight;

    return OrientationBuilder(builder: (context, orientation) {
      if(orientation==Orientation.portrait)
        {
          return  Scaffold(
            appBar: AppBar(title: Text("Media Query"),),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: width*0.5-16,
                    child: Column(
                      children: [
                        Container(
                          height: bodyheight*0.333,
                          width: width,
                          color: Colors.amber,
                        ),
                        Container(
                          height: bodyheight*0.333,
                          width: width,
                          color: Colors.pink,
                        ),
                        Container(
                          height: bodyheight*0.334-16,
                          width: width,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width*0.5,
                    child: Column(
                      children: [
                        Container(
                          height: bodyheight*0.333,
                          width: width,
                          color: Colors.blue,
                        ),
                        Container(
                          height: bodyheight*0.333,
                          width: width,
                          color: Colors.amber,
                        ),
                        Container(
                          height: bodyheight*0.334-16,
                          width: width,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      else
        {
          return  Scaffold(
            appBar: AppBar(title: Text("Media Query"),),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: width*0.5-16,
                    child: Column(
                      children: [
                        Container(
                          height: bodyheight*0.333,
                          width: width,
                          color: Colors.green,
                        ),
                        Container(
                          height: bodyheight*0.333,
                          width: width,
                          color: Colors.red,
                        ),
                        Container(
                          height: bodyheight*0.334-16,
                          width: width,
                          color: Colors.deepPurple,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width*0.5,
                    child: Column(
                      children: [
                        Container(
                          height: bodyheight*0.333,
                          width: width,
                          color: Colors.deepPurple,
                        ),
                        Container(
                          height: bodyheight*0.333,
                          width: width,
                          color: Colors.green,
                        ),
                        Container(
                          height: bodyheight*0.334-16,
                          width: width,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    },);
  }
}
