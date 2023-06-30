import 'package:flutter/widgets.dart';

void navigateTo(BuildContext context, Widget view) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Navigator.push(
      context,
      PageRouteBuilder(
        maintainState: true,
        transitionDuration: const Duration(milliseconds: 600),
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(
            opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeIn,
              ),
            ),
            child: view,
          );
        },
      ),
    );
  });
}
