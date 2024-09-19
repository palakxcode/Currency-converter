import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class CurrencyCon extends StatefulWidget {
  const CurrencyCon({super.key});

  @override
  State<CurrencyCon> createState() => _CurrencyConState();
}

class _CurrencyConState extends State<CurrencyCon> {
  final TextEditingController tec = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff183a37),
        title: const Text(
          "Currency Converter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff183a37),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${result != 0 ? result.toStringAsFixed(2) : 0}',
                style: const TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4c956c)),
              ),
              TextField(
                controller: tec,
                decoration: const InputDecoration(
                  hintText: "Enter the amount in USD",
                  hintStyle: TextStyle(color: Color(0xfffefee3)),
                  prefixIcon: Icon(Icons.monetization_on_sharp),
                  prefixIconColor: Color(0xff4c956c),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10.0),
              TextButton(
                  onPressed: () {
                    result = double.parse(tec.text) * 81;
                    setState(() {});
                  },
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromRGBO(88, 122, 90, 1))),
                  child: const Text(
                    "Convert",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
