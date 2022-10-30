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
  List<list> users = getUsers();
  String resulttext = "0";
  @override
  void initState() {
    super.initState();
    countControllor =
        List.generate(users.length, (index) => TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: users.length,
          itemBuilder: (context, int index) {
            final user = users[index];
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
                            user.size,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            user.weight,
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
                              controller: countControllor[index],
                              onChanged: (value) {
                                setState(() {
                                  int result =
                                      int.parse(countControllor[index].text) *
                                          int.parse(user.price);
                                  resulttext = result.toString();
                                });
                              },
                            ),
                          )
                        ]),
                      ),
                      Column(
                        children: [
                          Text(
                            "₹${user.price}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            " ₹ ${resulttext}  ",
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
