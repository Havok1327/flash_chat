import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key,
    required this.colour,
    required this.roundButtonTitle,
    required this.onPress}) : super(key: key);

  final Color colour;
  final String roundButtonTitle;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          textColor: Colors.white,
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            roundButtonTitle,
          ),
        ),
      ),
    );
  }
}