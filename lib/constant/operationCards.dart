import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money_management/constant/operations.dart';

class OperationCard extends StatelessWidget {
  const OperationCard({
    required this.operations,

    Key? key,
  }) : super(key: key);

  final Operations operations;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 120,
        width: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    SvgPicture.network(operations.image),
                    SizedBox(height: 20),
                    Text(
                      operations.type1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      operations.type2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

