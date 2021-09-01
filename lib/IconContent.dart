import"package:flutter/material.dart";

class IconContent extends StatelessWidget {
  IconContent({ this.label,this.Sanket});
  final String label;
  final IconData Sanket;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Sanket,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            color: Color(0XFFFFFFFF),
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
