import 'package:demo/widget/with_variants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TablePage extends StatelessWidget {
  const TablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(children: [
              Column(
                children: <Widget>[
                  Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.top,
                    border: TableBorder.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 1),
                    children: [
                      TableRow(
                          decoration:
                              BoxDecoration(color: Colors.grey.shade400),
                          children: [
                            Column(children: const [
                              Text(
                                'Size ',
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
                    ],
                  ),
                  const WithVariants(),
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
                ],
              ),
            ])));
  }
}
