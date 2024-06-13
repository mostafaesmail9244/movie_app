import 'package:flutter/material.dart';


class RateWidget extends StatelessWidget {
  const RateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
      ),
    );
  }
}