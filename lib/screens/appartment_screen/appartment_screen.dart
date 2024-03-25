import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/apartment_model.dart';
import 'components/apartment_details_colum.dart';
import '../../constants.dart';

class AppartmentDetailsScreen extends StatelessWidget {
  const AppartmentDetailsScreen({super.key, required this.apartment});
  final Apartment apartment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
            left: kDefaultPading, right: kDefaultPading, top: 22),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: const Icon(CupertinoIcons.ellipsis),
              )
            ],
          ),
          const SizedBox(height: 25),
          SizedBox(
            child: Stack(children: [
              Hero(
                tag: apartment.imgUrl,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    apartment.imgUrl,
                    height: 290,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.bookmark,
                    color: Colors.white,
                  ),
                ),
              )
            ]),
          ),
          const SizedBox(height: 25),
          ApartmentDetailsColumn(apartment: apartment),
          const SizedBox(height: 25),
          Center(
            child: Container(
              height: 60,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(kDefaultPading),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0, 2),
                        blurRadius: 2)
                  ]),
              child: const Text(
                'Book Now',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
          )
        ]),
      ),
    ));
  }
}
