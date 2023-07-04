// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class PaymentSuccessAnimation extends StatefulWidget {
//   @override
//   _PaymentSuccessAnimationState createState() =>
//       _PaymentSuccessAnimationState();
// }

// class _PaymentSuccessAnimationState extends State<PaymentSuccessAnimation>
//     with SingleTickerProviderStateMixin {
//   AnimationController _animationController;
//   Animation<double> _scaleAnimation;
//   Animation<double> _opacityAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 800),
//     );

//     _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: _animationController,
//         curve: Interval(0.0, 0.6, curve: Curves.easeOut),
//       ),
//     );

//     _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: _animationController,
//         curve: Interval(0.6, 1.0, curve: Curves.easeIn),
//       ),
//     );

//     _animationController.addListener(() {
//       setState(() {});
//     });

//     _animationController.forward();
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ScaleTransition(
//         scale: _scaleAnimation,
//         child: Opacity(
//           opacity: _opacityAnimation.value,
//           child: Container(
//             width: 150,
//             height: 150,
//             decoration: BoxDecoration(
//               color: Colors.green,
//               shape: BoxShape.circle,
//             ),
//             child: Icon(
//               Icons.check,
//               color: Colors.white,
//               size: 80.0,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//     super.debugFillProperties(properties);
//     properties.add(DiagnosticsProperty<AnimationController>(
//         '_animationController', _animationController));
//   }
// }

// // Contoh penggunaan:
// class MyPaymentSuccessPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pembayaran Berhasil'),
//       ),
//       body: Center(
//         child: PaymentSuccessAnimation(),
//       ),
//     );
//   }
// }
