import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstate/constants.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 6,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    CupertinoIcons.line_horizontal_3_decrease,
                    size: 28,
                  ),
                ),
              ),
              const SizedBox(
                width: kDefaultFontSize * 1.5,
              ),
              const Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      maxLines: 1,
                      style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: kDefaultPading,
                          overflow: TextOverflow.ellipsis),
                    ),
                    Text(
                      'Pokhara, Nepal',
                      maxLines: 1,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 60,
            width: 60,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/profile.webp')),
          ),
        )
      ],
    );
  }
}
