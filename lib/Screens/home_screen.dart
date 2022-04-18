import 'package:flutter/material.dart';
import 'package:money_management/constant/cards.dart';
import 'package:money_management/constant/operationCards.dart';
import 'package:money_management/constant/operations.dart';
import 'package:money_management/constant/transactionHistories.dart';


class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300],
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('lib/images/Accounts image.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'welcome back',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20,),
                      const Text(
                        'Reand Zuhairi',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            CreditCard(),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Operations',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 120,
              width: 140,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index)=>OperationCard(
                    operations: operation[index],
                  ),
                  separatorBuilder: (context, index) => SizedBox(width: 20),
                  itemCount: operation.length,
              ),
            ),
            SizedBox(height: 20),
            Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
            'Transaction Histories',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 150,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                  itemBuilder: (context,index) => TransactionHistories(
                    historie: histories[index],
                  ),
                  separatorBuilder: (context , index) => SizedBox(height: 10),
                  itemCount: histories.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
