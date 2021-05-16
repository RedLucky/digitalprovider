import 'package:digitalprovider/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final myFormController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myFormController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          decoration: BoxDecoration(
            color: HexColor("#4D11B2"),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // gambar
              Container(
                height: MediaQuery.of(context).size.height * 0.43,
                child: Center(
                  child: Text(
                    'Ini diisi gambar',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              // intro
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                child: Center(
                  child: Text(
                    'Ini diisi tulisan apasaja',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.17,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // Container(
                          //   child: Icon(
                          //     Icons.phone,
                          //     color: Colors.white,
                          //   ),
                          // ),
                          Expanded(
                            flex: 1,
                            child: TextField(
                              controller: myFormController,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black87,
                              ),
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                      left: 14.0, bottom: 8.0, top: 8.0),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: '082234561608'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        child: Center(
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: HexColor("#6BD4CD")),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    'MASUK',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  if (myFormController.text == '082234561608') {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Home();
                                    }));
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          content: Text(
                                              "Nomor yang kamu masukkan salah!"),
                                        );
                                      },
                                    );
                                  }
                                }),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
