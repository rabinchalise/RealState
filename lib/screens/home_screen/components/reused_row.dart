import 'package:flutter/material.dart';

import '../../../constants.dart';

class ReusedRow extends StatelessWidget {
  const ReusedRow({super.key, required this.labelText});
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Text(
            labelText,
            maxLines: 1,
            style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                overflow: TextOverflow.ellipsis),
          ),
        ),
        const Spacer(),
        const Expanded(
          child: Text(
            'View All',
            maxLines: 1,
            style: TextStyle(
                color: kSecondaryColor, overflow: TextOverflow.ellipsis),
          ),
        )
      ],
    );
  }
}
