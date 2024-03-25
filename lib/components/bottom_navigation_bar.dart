import 'package:flutter/material.dart';

import 'package:realstate/constants.dart';
import 'package:realstate/models/nav_items_model.dart';
import 'package:realstate/screens/home_screen/home_screen.dart';
import 'package:rive/rive.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    super.key,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  List<SMIBool> riveIconInputs = [];
  int selectedIndex = 0;
  List<StateMachineController?> controllers = [];
  List<dynamic> pages = [
    const HomeScreen(),
    const Center(
      child: Text(
        'hello',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 100,
          color: Colors.black,
        ),
      ),
    ),
    const Center(
      child: Text('hi',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 100,
            color: Colors.black,
          )),
    ),
    const Center(
      child: Text('Rabin',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 100, color: Colors.black)),
    )
  ];

  void press(int index) {
    riveIconInputs[index].change(true);
    Future.delayed(const Duration(seconds: 1), () {
      riveIconInputs[index].change(false);
    });
  }

  void riveOninit(artboard, {required String stateMachineName}) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, stateMachineName);
    artboard.addController(controller!);
    controllers.add(controller);
    riveIconInputs.add(controller.findInput<bool>('active') as SMIBool);
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
            height: 70,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(24),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0, 20),
                      blurRadius: 20)
                ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(bottomNavItem.length, (index) {
                  final riveIcon = bottomNavItem[index].rive;

                  return GestureDetector(
                    onTap: () {
                      press(index);
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedBar(
                          isActive: selectedIndex == index,
                        ),
                        SizedBox(
                          height: 36,
                          width: 36,
                          child: Opacity(
                            opacity: selectedIndex == index ? 1 : 0.5,
                            child: RiveAnimation.asset(
                              riveIcon.src,
                              artboard: riveIcon.artboard,
                              onInit: (artboard) {
                                riveOninit(artboard,
                                    stateMachineName:
                                        riveIcon.stateMachineName);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }))),
      ),
    );
  }
}

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 2),
      height: 4,
      width: isActive ? 24 : 0,
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
