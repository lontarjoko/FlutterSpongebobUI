part of 'widgets.dart';

class CardBackground extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clipPath = Path();
    double curveDistance = 40;

    clipPath.moveTo(0, size.height * 0.4);
    clipPath.lineTo(0, size.height - curveDistance);
    clipPath.quadraticBezierTo(
        1, size.height - 1, 0 + curveDistance, size.height);
    clipPath.lineTo(size.width - curveDistance, size.height);
    clipPath.quadraticBezierTo(size.width - 1, size.height - 1, size.width,
        size.height - curveDistance);
    clipPath.lineTo(size.width, 0 + curveDistance);
    clipPath.quadraticBezierTo(size.width - 1, 0,
        size.width - curveDistance - 5, 0 + curveDistance / 3);
    clipPath.lineTo(curveDistance, size.height * 0.29);
    clipPath.quadraticBezierTo(
        1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clipPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
