import 'package:flutter/material.dart';

class WithVariants extends StatelessWidget {
  const WithVariants({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(children: <Widget>[
        Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          border: TableBorder.all(
              color: Colors.white, style: BorderStyle.solid, width: 1),
          children: [
            TableRow(
                decoration: BoxDecoration(color: Colors.grey.shade400),
                children: [
                  Column(children: const [
                    Text(
                      'Size',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Weight',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Count',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Price',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Cost',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ]),
                ]),
            TableRow(
                decoration: BoxDecoration(color: Colors.grey.shade200),
                children: [
                  Column(children: const [Text('8 mm')]),
                  Column(children: const [Text('2.5 Kg')]),
                  Container(
                    color: Colors.grey.shade400,
                    child: Column(children: const [
                      SizedBox(height: 40, width: 40, child: TextField())
                    ]),
                  ),
                  Column(children: const [Text('₹ 70.00')]),
                  Column(children: const [Text('₹ 370.00')]),
                ]),
            TableRow(
                decoration: BoxDecoration(color: Colors.grey.shade200),
                children: [
                  Column(children: const [Text('10 mm')]),
                  Column(children: const [Text('4.5 Kg')]),
                  Container(
                    color: Colors.grey.shade400,
                    child: Column(children: const [
                      SizedBox(height: 40, width: 40, child: TextField())
                    ]),
                  ),
                  Column(children: const [Text('₹ 69.00')]),
                  Column(children: const [Text('₹ 270.00')]),
                ]),
            TableRow(
                decoration: BoxDecoration(color: Colors.grey.shade200),
                children: [
                  Column(children: const [Text('12 mm')]),
                  Column(children: const [Text('6.0 KG')]),
                  Container(
                    color: Colors.grey.shade400,
                    child: Column(children: const [
                      SizedBox(height: 40, width: 40, child: TextField())
                    ]),
                  ),
                  Column(children: const [Text('₹ 69.00')]),
                  Column(children: const [Text('₹ 170.00')]),
                ]),
            TableRow(
                decoration: BoxDecoration(color: Colors.grey.shade200),
                children: [
                  Column(children: const [Text('16 mm')]),
                  Column(children: const [Text('8.5 KG')]),
                  Container(
                    color: Colors.grey.shade400,
                    child: Column(children: const [
                      SizedBox(height: 40, width: 40, child: TextField())
                    ]),
                  ),
                  Column(children: const [Text('₹ 69.00')]),
                  Column(children: const [Text('₹ 260.00')]),
                ]),
            TableRow(
                decoration: BoxDecoration(color: Colors.grey.shade200),
                children: [
                  Column(children: const [Text('32 mm')]),
                  Column(children: const [Text('10 KG')]),
                  Container(
                    color: Colors.grey.shade400,
                    child: Column(children: const [
                      SizedBox(height: 40, width: 40, child: TextField())
                    ]),
                  ),
                  Column(children: const [Text('₹ 69.00')]),
                  Column(children: const [Text('₹ 400.00')]),
                ]),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text(
              "Total : ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "₹ 1400.00",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        const Divider(
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text(
              "Weight In ton :",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 5,
            ),
            Text("2.2")
          ],
        ),
        const Divider(
          thickness: 2,
        ),
      ]),
    ));
  }
}
