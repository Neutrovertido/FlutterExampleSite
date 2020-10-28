import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(w) {
    return <Widget>[
      Container(
        width: w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Fire Force \n8th company",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                  "Join Shinra and his team in the marvellous world of Enn Enn no Shouboutai which features a lot of thrill, emotion and action!",
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
            MaterialButton(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 24),
              color: Colors.red,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all((Radius.circular(20)))),
              child: Text("Join the squad!",
                  style: TextStyle(fontSize: 32, color: Colors.white)),
            )
          ],
        ),
      ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Image.asset("images/fireforce.png",
          width: 400,
          height: 400,),
        )
        
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width/2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
