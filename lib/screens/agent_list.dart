import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstate/constants.dart';
import 'package:realstate/models/apartment_model.dart';

class AgentList extends StatelessWidget {
  const AgentList({super.key, required this.apartment});
  final Apartment apartment;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            apartment.agentName.length,
            (index) => Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                height: 60,
                                width: 60,
                                apartment.agentUrl[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: kDefaultPading,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                apartment.agentName[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: kDefaultPading),
                              ),
                              Text(
                                apartment.agentTitle[index],
                                style: const TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          if (MediaQuery.sizeOf(context).width > 350)
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kDefaultPading),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: const Icon(
                                CupertinoIcons.ellipses_bubble_fill,
                                color: Colors.grey,
                              ),
                            ),
                          if (MediaQuery.sizeOf(context).width > 350)
                            const SizedBox(
                              width: kDefaultPading,
                            ),
                          if (MediaQuery.sizeOf(context).width > 270)
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: kSecondaryColor,
                                borderRadius:
                                    BorderRadius.circular(kDefaultPading),
                              ),
                              child: const Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                            ),
                        ],
                      )
                    ],
                  ),
                )));
  }
}
