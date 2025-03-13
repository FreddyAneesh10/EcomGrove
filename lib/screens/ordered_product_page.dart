// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import '../models/cart_model.dart';
// import '../widget/appbar_widget.dart';
// import '../widget/image_widget.dart';
// import '../widget/text_widget.dart';
//
// class OrderedProductPage extends StatefulWidget {
//   const OrderedProductPage({super.key});
//
//   @override
//   State<OrderedProductPage> createState() => _OrderedProductPageState();
// }
//
// class _OrderedProductPageState extends State<OrderedProductPage> {
//   late Box<CartModel> orderedBox;
//   bool isLoading = true;
//
//   Future<void> _initializeOrderedBox() async {
//     orderedBox = await Hive.openBox<CartModel>('ordered');
//     setState(() {
//       isLoading = false;
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _initializeOrderedBox();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const PreferredSize(
//         preferredSize: Size.fromHeight(50),
//         child: AppbarWidget(text: 'Ordered Products'),
//       ),
//       body: isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : orderedBox.isNotEmpty // Fix: Check if box has items
//           ? Expanded(
//             child: ListView.builder(
//                     itemCount: orderedBox.length,
//                     itemBuilder: (context, index) {
//             final item = orderedBox.getAt(index);
//             if (item == null) return const SizedBox(); // Fix: Prevent null errors
//
//             return ListTile(
//               leading: ImageWidget(imgUrl: item.imgUrl),
//               title: TextWidget(text: item.text),
//               subtitle: TextWidget(
//                 text: '₹${item.price} | Qty: ${item.qty}',
//               ),
//             );
//                     },
//                   ),
//           )
//           : const Center(child: TextWidget(text: 'No orders yet!')),
//     );
//   }
// }
