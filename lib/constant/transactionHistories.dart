import 'package:flutter/material.dart';
import 'package:money_management/constant/operations.dart';

class TransactionHistories extends StatelessWidget {
  const TransactionHistories({
    required this.historie,
});
  final Histories historie;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 70,
                    child: Image(
                      image: AssetImage(historie.image,),
                    ),
                  ),
                  SizedBox(width: 30),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Text(
                          historie.type,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          historie.date,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Center(
                      child: Text(
                        historie.payments,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
    );
  }
}
