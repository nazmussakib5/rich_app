import 'package:flutter/material.dart';


class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){

    return new MakeItRainState();

  }
}

class MakeItRainState extends State<MakeItRain> {
  int moneyConunter = 0;

  void rainMoney(){
   setState(() {
     //importan
     moneyConunter = moneyConunter + 100;
   });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(

        title: new Text("I AM RICH"),
        backgroundColor: Colors.green,


      ),

      body: new Container(
        child: new Column(
          children: <Widget>[
            //title
            new Center(
              child: new Text("Get Rich",
                  style: new TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.w700,
                      fontSize: 30.0
                  ),

                )
            ),

            new Expanded(
                child: new Center(
                  child: new Text('\$$moneyConunter',
                  style: new TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 56.8,
                    fontWeight: FontWeight.w800
                  ),),


                )),
            
            new Expanded(
                child: Center(
                  child: new FlatButton(
                    color: Colors.lightGreen,
                      textColor: Colors.pink,

                      onPressed: rainMoney,
                      child: new Text("Let It Rain",
                        style: new TextStyle(
                          fontSize: 19.9,
                        ),
                          ))
                  
                  
                  
                ))

            



          ],
        ),
      ),
    );
  }
}

