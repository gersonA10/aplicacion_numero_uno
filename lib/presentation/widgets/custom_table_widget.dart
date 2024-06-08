
import 'package:flutter/material.dart';

class CustomTable extends StatelessWidget {
  final String numeral;
  final String titleDetalle;
  final String contentDetalle;
  final String titleMonto;
  final String contentMonto;

  final List<Widget> children; 

  const CustomTable(
      {super.key,
      required this.numeral,
      required this.titleDetalle,
      required this.contentDetalle,
      required this.titleMonto,
      required this.contentMonto,
      required this.children
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Numeros de deuda
             Text(
              numeral,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
             Text(titleDetalle ,style: const TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                 SizedBox(
                  width: 150,
                  child: Text(
                    contentDetalle
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Column(
                    children: children,
                  ),
                )
              ],
            ),
             Row(
              children: [
                Text(titleMonto, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(contentMonto,  style: const TextStyle(fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
