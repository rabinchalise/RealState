import 'package:flutter/material.dart';
import 'package:realstate/screens/agent_list.dart';

import '../../../constants.dart';
import '../../../models/apartment_model.dart';
import 'apartment_details_icons.dart';

class ApartmentDetailsColumn extends StatelessWidget {
  const ApartmentDetailsColumn({
    super.key,
    required this.apartment,
  });

  final Apartment apartment;

  @override
  Widget build(BuildContext context) {
    List<IconData> icon = [Icons.bed, Icons.person, Icons.location_city];
    List<String> text = [
      '${apartment.room}',
      '${apartment.agent}',
      '${apartment.community}',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          maxLines: 1,
          apartment.title,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              overflow: TextOverflow.ellipsis),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (MediaQuery.sizeOf(context).width > 220)
              Row(
                children: [
                  const Icon(
                    Icons.place,
                    color: kSecondaryColor,
                  ),
                  Text(
                    maxLines: 1,
                    apartment.address,
                    style: const TextStyle(
                        color: Colors.grey, overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
            Text('⭐${apartment.rating}')
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        if (MediaQuery.sizeOf(context).width > 220)
          ApartmentDetailsIcons(icon: icon, text: text),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Row(
              children: [
                Text(
                  'रु ${apartment.price}',
                  style: const TextStyle(
                      fontSize: 18,
                      color: kSecondaryColor,
                      fontWeight: FontWeight.w700),
                ),
                if (MediaQuery.sizeOf(context).width > 200)
                  const Text(
                    '/mo',
                    style: TextStyle(color: Colors.grey),
                  )
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            if (MediaQuery.sizeOf(context).width > 220)
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 75,
                decoration: BoxDecoration(
                    color: const Color(0xFFB4D4FF),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'For Sale',
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          maxLines: 1,
          'About House',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              overflow: TextOverflow.ellipsis),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
            'A paired home is two homes that shares a wall and have opposite side entries. The whole building is designed to look like single larger home. Unlike a front duplex, the paired home helps provide more  for homeowners.',
            style: TextStyle(color: Colors.grey)),
        const SizedBox(
          height: 25,
        ),
        const Text(
          maxLines: 1,
          'Lesting Agent',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              overflow: TextOverflow.ellipsis),
        ),
        AgentList(apartment: apartment)
      ],
    );
  }
}
