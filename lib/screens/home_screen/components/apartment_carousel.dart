import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:realstate/screens/home_screen/components/reused_row.dart';
import 'package:realstate/constants.dart';
import 'package:realstate/models/apartment_model.dart';
import 'package:realstate/screens/appartment_screen/appartment_screen.dart';

class ApartmentCarousel extends StatelessWidget {
  const ApartmentCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ReusedRow(labelText: 'Popular Nearest You'),
        SizedBox(
          height: 370,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: apartments.length,
              itemBuilder: (context, index) {
                Apartment apartment = apartments[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AppartmentDetailsScreen(apartment: apartment)));
                  },
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      width: 350,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 5,
                            child: Container(
                              height: 150,
                              width: 350,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0.0, 2.0),
                                        blurRadius: 6.0)
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      apartment.title,
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          overflow: TextOverflow.ellipsis),
                                      maxLines: 1,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.place,
                                              color: kSecondaryColor,
                                            ),
                                            Text(
                                              apartment.address,
                                              maxLines: 1,
                                              style: const TextStyle(
                                                  color: Colors.grey,
                                                  overflow:
                                                      TextOverflow.ellipsis),
                                            ),
                                          ],
                                        ),
                                        Text('⭐${apartment.rating}')
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text('रु ${apartment.price}',
                                                style: const TextStyle(
                                                    fontSize: 18,
                                                    color: kSecondaryColor,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            const Text(
                                              '/mo',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                        const Icon(
                                          CupertinoIcons.heart_circle_fill,
                                          size: 26,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Stack(children: [
                              Hero(
                                tag: apartment.imgUrl,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    apartment.imgUrl,
                                    height: 220,
                                    width: 350,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black54),
                                  child: const Icon(
                                    Icons.bookmark,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ]),
                          )
                        ],
                      )),
                );
              }),
        )
      ],
    );
  }
}
