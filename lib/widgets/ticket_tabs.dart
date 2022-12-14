import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppLayout.getHeight(50),
            ),
            color: const Color(0xFFF4F6FD)),
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50)))),
              child: Center(child: Text(firstTab)),
            ),
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7),
              ),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50)))),
              child: Center(child: Text(secondTab)),
            ),
          ],
        ),
      ),
    );
  }
}
