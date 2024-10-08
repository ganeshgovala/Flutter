import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String TransactionName;
  final int price;
  final Color color;
  const TransactionCard({
    required this.TransactionName,
    required this.price,
    required this.color,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 1.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(Icons.person, color: const Color.fromARGB(255, 255, 255, 255))
                ),
                SizedBox(width: 10),
                Text(TransactionName, style : TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800
                )),
              ],
            ),
            Text("\$${price}", style : TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ))
          ],
        )
      ),
    );
  }
}