import 'package:flutter/material.dart';
import 'package:realstate/constants.dart';
import 'package:realstate/models/apartment_model.dart';
import 'package:realstate/responsive/responsive_body.dart';

class RecommendAppartmentList extends StatelessWidget {
  const RecommendAppartmentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(apartments.length, (index) {
      Apartment apartment = apartments[index];
      return Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPading),
          margin: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          height: 180,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 6.0),
              ]),
          child: Row(children: [
            (Responsive.isMobile(context))
                ? Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            apartment.imgUrl,
                            height: 150,
                            width: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          right: 6,
                          top: 6,
                          child: Container(
                            height: 26.0,
                            width: 26.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black54),
                            child: const Icon(
                              Icons.bookmark,
                              color: Colors.white,
                              size: kDefaultPading,
                            ),
                          ),
                        )
                      ]),
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          apartment.imgUrl,
                          height: 160,
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 6,
                        top: 6,
                        child: Container(
                          height: 26.0,
                          width: 26.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black54),
                          child: const Icon(
                            Icons.bookmark,
                            color: Colors.white,
                            size: kDefaultPading,
                          ),
                        ),
                      )
                    ]),
                  ),
            (Responsive.isMobile(context))
                ? Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(kDefaultPading),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            apartment.title,
                            maxLines: 1,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              if (MediaQuery.of(context).size.width > 300)
                                const Icon(
                                  Icons.place,
                                  color: kSecondaryColor,
                                ),
                              Flexible(
                                child: Text(
                                  apartment.address,
                                  maxLines: 1,
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.bed,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text('${apartment.room}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            if (MediaQuery.of(context).size.width > 360)
                              Row(
                                children: [
                                  const Icon(
                                    Icons.person,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '${apartment.agent}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            const SizedBox(
                              width: 24,
                            ),
                            if (MediaQuery.of(context).size.width > 360)
                              Row(
                                children: [
                                  const Icon(Icons.location_city,
                                      color: Colors.grey),
                                  const SizedBox(width: 2),
                                  Text('${apartment.community}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold))
                                ],
                              )
                          ])
                        ],
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPading, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          apartment.title,
                          maxLines: 1,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
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
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.bed,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text('${apartment.room}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                '${apartment.agent}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.location_city,
                                  color: Colors.grey),
                              const SizedBox(width: 2),
                              Text('${apartment.community}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))
                            ],
                          )
                        ])
                      ],
                    ),
                  )
          ]));
    }));
  }
}
