import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Exerciceliste extends StatelessWidget {
  final icon;
  final  color;
  final String coursname;
  final String nombrecours;
  const Exerciceliste({
    Key? key,
    required this.icon,
    required this.color,
    required this.coursname,
    required this.nombrecours,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(12)),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coursname,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        nombrecours,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      SizedBox(width: 2),
                      Text(
                        'Exercices',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
        ]),
      ),
    );
  }
}
