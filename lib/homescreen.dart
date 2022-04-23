import 'package:flutter/material.dart';
import './main.dart';

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suka Belanja',
      theme: ThemeData(
        primaryColor : Colors.teal,
      ),
      home: Beranda(),
    );
  }
}

class _beranda extends  StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        height: double.infinity,
        width: double.infinity,
        color: Colors.pink[800],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              SizedBox(height: 40.0),

              Center(
                child: Image.asset(
                  "images/logolarge-sukabelanja.png",
                  height: 150,
                ),
              ),

              SizedBox(height: 60.0),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      'nomor rekening',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.black87,
                          offset: Offset(1, 2),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    height: 40,
                    child: TextField(
                      style: TextStyle(
                          color: Colors.black87
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 8),
                        prefixIcon: Icon (
                          Icons.account_balance_wallet,
                        ),
                        hintText: 'input nomor rekening',
                        hintStyle: TextStyle(
                            color: Colors.black38
                        ),
                      ),
                      onSubmitted: (String value) {
                        setState(() {
                          _nomorrekening = value;
                        });
                      },
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30.0),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      'password :',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.black87,
                          offset: Offset(1, 2),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    height: 40,
                    child: TextField(
                      style: TextStyle(
                          color: Colors.black38
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 8),
                        prefixIcon: Icon (
                          Icons.lock,
                        ),
                        hintText: 'input password',
                        hintStyle: TextStyle(
                            color: Colors.black38
                        ),
                      ),
                      onSubmitted: (String value) {
                        setState(() {
                          _namapemilik = value;
                        });
                      },
                    ),
                  ),
                ],
              ),

              SizedBox(height: 50.0),

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal[700],
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return FirstScreen();
                      }));
                    },
                    child : Text(
                      'Masuk',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
            ),

              SizedBox(height: 10.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Text(
                    'Powered by ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'DICODING INDONESIA',
                    style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
