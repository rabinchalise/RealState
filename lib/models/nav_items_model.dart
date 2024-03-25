import 'rive_model.dart';

class NavItemModel {
  final String title;
  final RiveModal rive;

  NavItemModel({required this.title, required this.rive});
}

List<NavItemModel> bottomNavItem = [
  NavItemModel(
      title: 'Home',
      rive: RiveModal(
          src: 'assets/rives/animated_icon_set_-_1_color.riv',
          artboard: 'HOME',
          stateMachineName: 'HOME_interactivity')),
  NavItemModel(
      title: 'Contact',
      rive: RiveModal(
          src: 'assets/rives/icons.riv',
          artboard: 'CHAT',
          stateMachineName: 'CHAT_Interactivity')),
  NavItemModel(
      title: 'Agent',
      rive: RiveModal(
          src: 'assets/rives/icons.riv',
          artboard: 'SIGNOUT',
          stateMachineName: 'state_machine')),
  NavItemModel(
      title: 'Notifications',
      rive: RiveModal(
          src: 'assets/rives/animated_icon_set_-_1_color.riv',
          artboard: 'BELL',
          stateMachineName: 'BELL_Interactivity')),
];
