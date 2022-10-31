import 'package:demo/model/model_list.dart';
import 'package:flutter/material.dart';

class WithVariants extends StatefulWidget {
  const WithVariants({
    super.key,
  });

  @override
  State<WithVariants> createState() => _WithVariantsState();
}

class _WithVariantsState extends State<WithVariants> {
  late final List<TextEditingController> countControllor;
  List<list> variant = getVariants();
  String resulttext = "0";
  @override
  void initState() {
    super.initState();
    countControllor =
        List.generate(variant.length, (index) => TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: variant.length,
          itemBuilder: (context, int index) {
            final variants = variant[index];
            return Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              border: TableBorder.all(
                  color: Colors.white, style: BorderStyle.solid, width: 1),
              children: [
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    children: [
                      Column(
                        children: [
                          Text(
                            variants.size,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            variants.weight,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Container(
                        color: Colors.grey.shade400,
                        child: Column(children: [
                          SizedBox(
                            height: 40,
                            width: 30,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {
                                  int result = int.parse(value) *
                                      int.parse(variants.price);
                                  // = result.toString();
                                  variants.cost = result.toString();
                                });
                              },
                            ),
                          )
                        ]),
                      ),
                      Column(
                        children: [
                          Text(
                            "₹${variants.price}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "${variants.cost}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ])
              ],
            );
          }),
    );
  }
}
