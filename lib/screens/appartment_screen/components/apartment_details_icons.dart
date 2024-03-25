import 'package:flutter/material.dart';

class ApartmentDetailsIcons extends StatelessWidget {
  const ApartmentDetailsIcons({
    super.key,
    required this.icon,
    required this.text,
  });

  final List<IconData> icon;
  final List<String> text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          icon.length,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Icon(
                      icon[index],
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      text[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),
    );
  }
}
