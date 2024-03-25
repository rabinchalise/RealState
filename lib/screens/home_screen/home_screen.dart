import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:realstate/screens/home_screen/components/apartment_carousel.dart';
import 'package:realstate/screens/home_screen/components/building_icon.dart';
import 'package:realstate/screens/home_screen/components/header.dart';
import 'package:realstate/screens/home_screen/components/recommend_appartment_list.dart';
import 'package:realstate/screens/home_screen/components/reused_row.dart';
import 'package:realstate/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
            left: kDefaultPading, right: kDefaultPading, top: 22),
        child: ListView(
          children: [
            const Header(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: TextField(
                    cursorColor: kSecondaryColor,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          CupertinoIcons.search,
                          color: kSecondaryColor,
                        ),
                        hintText: 'Search your house',
                        hintStyle: const TextStyle(
                            fontSize: kDefaultPading,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.black54),
                        filled: true,
                        fillColor: Colors.white,
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none)),
                  ),
                ),
                const SizedBox(
                  width: kDefaultPading * 1.5,
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(CupertinoIcons.slider_horizontal_3),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const BuildingIcon(),
            const SizedBox(
              height: 20,
            ),
            const ApartmentCarousel(),
            const SizedBox(
              height: 20,
            ),
            const ReusedRow(labelText: 'Recommend For you'),
            const RecommendAppartmentList()
          ],
        ),
      ),
    ));
  }
}
