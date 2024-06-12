// class BackgroundWidget extends StatelessWidget {
//   final Widget child;

//   const BackgroundWidget({Key? key, required this.child}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/images/all_back.png'),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         child
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/extentions.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;

  const BackgroundWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Stack(
        children: [
          Positioned(
            child: Image.asset(
              'assets/images/back_top.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: context.deviceHeight * 0.36,
            ),
          ),
          child
        ],
      ),
    );
  }
}
