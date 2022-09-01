import 'package:flutter/material.dart';
import 'Constant.dart';

class ButtonButton extends StatelessWidget {
  ButtonButton({required this.OnTap, required this.buttonTitle});
  final VoidCallback OnTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: Largestyle,
          ),
        ),
        color: containerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20.0),
        height: kcontainerHight,
        width: double.infinity,
      ),
    );
  }
}
