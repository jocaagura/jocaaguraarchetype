import 'package:flutter/material.dart';

class MovilSecondaryOptionWidget extends StatelessWidget {
  const MovilSecondaryOptionWidget({
    required this.onPressed,
    required this.label,
    required this.icondata,
    required this.width,
    this.description = '',
    super.key,
  });
  final VoidCallback onPressed;
  final String label, description;
  final IconData icondata;
  final double width;

  @override
  Widget build(BuildContext context) {
    final double iconSize = width * 0.7;

    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Tooltip(
        message: description,
        child: Container(
          width: width,
          height: width,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(width * 0.1),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: iconSize,
                height: iconSize,
                child: Icon(
                  icondata,
                  color: Theme.of(context).canvasColor,
                ),
              ),
              Text(
                label,
                style: TextStyle(
                  color: Theme.of(context).canvasColor,
                  overflow: TextOverflow.ellipsis,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}