import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[50], shape: BoxShape.rectangle),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.22,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: HexColor("#5316B8"),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(27.5),
                    bottomRight: Radius.circular(27.5),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 28.0,
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 16, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lucky Fernanda R',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '082234561608',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white70),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.notifications_none,
                                color: Colors.white70,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 32, left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: HexColor("#7E51CA"),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  'Beranda',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  // color: HexColor("#7E51CA"),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  'Transaksi',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  // color: HexColor("#7E51CA"),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  'Ekstra',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
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
              ),
            ),
            Container(
              width: double.infinity,
              margin:
                  EdgeInsets.only(top: 24.0, bottom: 18.0, left: 24, right: 24),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(14),
                  child: Text(
                    'Saldo ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
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
