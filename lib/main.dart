import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import './homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suka Belanja',
      theme: ThemeData(
        primaryColor : Colors.teal[700],
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int number = 1;

  @override

  Card itembarang(String namabarang, String spekbarang, String hargabarang) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Qty",
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                  Text(
                    namabarang,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  Text(
                    spekbarang,
                    style: TextStyle(
                        fontSize: 10,
                    ),
                  ),
              ],
            ),
          ),

          Expanded(
            flex: 3,
            child: Row(
              children: <Widget> [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    'Rp. ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[700],
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(right: 10),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        hargabarang,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal[700],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        title: Image.asset(
          "images/logobar-sukabelanja.png",
          // fit: BoxFit.contain,
          height: 30,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink[800],
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            number = number + 1;
          });
        },
      ),

      body: Container(
        color: Colors.tealAccent[200],
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      itembarang('Mie Instan', '90 gram', '2600'),
                      itembarang('Minyak Goreng', '1 liter', '27000'),
                      itembarang('Deterjen', '880 gram', '18500'),
                      itembarang('Beras', '1 Kg', '11500'),

                      ListView.builder(
                        physics: ScrollPhysics(parent: null),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index){
                          return Container(
                            child: Card(
                              elevation: 5,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: "Qty",
                                        ),
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter.digitsOnly
                                        ], // Only numbers can be entered
                                      ),
                                    ),
                                  ),

                                  Expanded(
                                    flex: 5,
                                    child : Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget> [
                                        Text(
                                            'namabarang',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),

                                        Text(
                                            'spekbarang',
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),

                                  Expanded(
                                    flex: 3,
                                    child: Row(
                                      children: <Widget> [
                                        Padding(
                                          padding: EdgeInsets.only(right: 10),
                                          child: Text(
                                            'Rp.',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.teal[700],
                                              ),
                                            ),
                                          ),

                                        Expanded(
                                          child: Container(
                                          padding: EdgeInsets.only(right: 10),
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              ' hargabarang',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.teal[700],
                                              ),
                                            ),
                                          ),
                                        ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: number,
                      ),
                    ],
                  ),
                ),
              ),

            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child:Container(
              height: 60,
              width: double.maxFinite,
              color: Colors.teal[700],
              padding: EdgeInsets.only(bottom: 6 ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Spacer(flex: 1),
                  Expanded(
                    child:Text(
                    'Total: ',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 20,
                      ),
                    ),
                  ),
                    Text(
                    'Rp 395.000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  Spacer(flex: 2),
                ],
              ),
            ),
            ),
          ],
        ),
      ),

      drawer: Drawer(
          child: ListView(
              children: <Widget>[
                Container(
                  color: Colors.teal[600],
                  child: DrawerHeader(
                      child: Icon (
                        Icons.person,
                        color: Colors.orangeAccent,
                        size: 80,
                      )
                  ),
                ),

                Container (
                  color: Colors.white,
                  child: Column(
                    children: <Widget> [
                      ListTile(
                        tileColor: Colors.white,
                        leading: Icon(Icons.settings),
                        title: Text('pengaturan'),
                        onTap: (){
                          print('tersedia untuk versi premium');
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.shopping_cart_checkout_rounded),
                        title: Text('bayar kasir'),
                        onTap: (){
                          print('belum tersedia');
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.support_agent_rounded),
                        title: Text('hubungi kami'),
                        onTap: (){
                          print('email to : iyak92@gmail.com');
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.logout_rounded ),
                        title: Text('keluar'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return Beranda();
                          }));
                        },
                      ),
                    ],
                  ),
                ),
              ],
          ),
      ),

    );
  }
}
