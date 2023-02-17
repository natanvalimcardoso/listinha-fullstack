import 'package:flutter/material.dart';

class UserImageButtonWidget extends StatelessWidget {
  const UserImageButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: color.primary,
        foregroundColor: color.primary,
        child: const Text('A'),
      ),
    );
  }
}
