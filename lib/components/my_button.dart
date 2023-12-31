import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String title;
  final Color color ;
  final VoidCallback onPress ;

  const MyButton({Key? key ,

    required this.title,
    this.color=const Color(0xffa5a5a5),
    required this.onPress,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: InkWell(
          onTap: onPress,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            height: 80,
            child: Center(
              child: Text(title,style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
          ),
        ),
      ),
    );
  }
}
