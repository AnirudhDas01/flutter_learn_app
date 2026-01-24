import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints.expand(
          height:
              Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 +
              200.0,
        ),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(width: 4.0, color: (Colors.blue[400])!),
          borderRadius: BorderRadius.circular(15.0),
          color: (Colors.blue[300])!,
        ),
        alignment: Alignment.center,
        child: Text(
          'Hello World',
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
