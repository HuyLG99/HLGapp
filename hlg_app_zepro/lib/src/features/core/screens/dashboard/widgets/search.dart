import 'package:flutter/material.dart';

import '../../../../../constants/text_strings.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border(left: BorderSide(width: 4))),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tDashBoardSearch,
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.grey.withOpacity(0.5)),
          ),
          Icon(
            Icons.mic,
            size: 25,
          )
        ],
      ),
    );
  }
}