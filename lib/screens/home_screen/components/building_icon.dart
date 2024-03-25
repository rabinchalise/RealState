import 'package:flutter/material.dart';

import 'package:realstate/constants.dart';

class BuildingIcon extends StatefulWidget {
  const BuildingIcon({super.key});

  @override
  State<BuildingIcon> createState() => _BuildingIcoState();
}

class _BuildingIcoState extends State<BuildingIcon> {
  int _selectedIndex = 0;
  List<Map<String, dynamic>> icons = [
    {'icon': Icons.domain, 'text': 'Building'},
    {'icon': Icons.location_city, 'text': 'Community'},
    {'icon': Icons.house, 'text': 'House'},
    {'icon': Icons.bed, 'text': ' House Room'},
    {'icon': Icons.person, 'text': ' Agent'}
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          itemCount: icons.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(right: 5),
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _selectedIndex == index
                        ? kSecondaryColor
                        : Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icons[index]['icon'],
                      color: _selectedIndex == index
                          ? Colors.white
                          : kSecondaryColor,
                      size: 22.0,
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      icons[index]['text'],
                      maxLines: 1,
                      style: TextStyle(
                          color: _selectedIndex == index
                              ? Colors.white
                              : Colors.black54,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
