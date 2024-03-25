import "package:rive/rive.dart";

class RiveModal {
  final String src, artboard, stateMachineName;
  late SMIBool? status;
  RiveModal(
      {this.status,
      required this.src,
      required this.artboard,
      required this.stateMachineName});

  set setStatus(SMIBool state) {
    status = state;
  }
}
