
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmoticonFace extends StatelessWidget {
  final String Face;
  const EmoticonFace({Key? key,
  required this.Face}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12)
      ),
      padding: EdgeInsets.all(16),
      child: Center(child: Text(Face,
      style: TextStyle(
        fontSize: 30
      ),
      
      )),
    );
    
  }
}