import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money_management/constant/operations.dart';



class CreditCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      height: 210,
      width: 300,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0,15),
            blurRadius: 25,
            color: Colors.black38,
          ),
        ],
        gradient: LinearGradient(
          colors: [
            Colors.indigo,
            Colors.cyan,
          ]
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CARD NUMBER',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: 100,
                      child: Image(
                        image: AssetImage('lib/images/capitalOneLogo.png'),
                      ),
                    ),
                  ],
                ),
                Text(
                    '**** **** **** 3592',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('EXPIRY',
                          style: TextStyle(
                              fontSize: 9
                          ),
                        ),
                        Text('DATE',
                          style: TextStyle(
                              fontSize: 9
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 3,),
                    Text('11/23',
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Renad Adel Zuhairi',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 70,
                      child: Image(
                        image: AssetImage('lib/images/Mastercard-logo.png',),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    );
  }
}




