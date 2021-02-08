import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  @override
  _TipCalculatorState createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  TextEditingController amountController = new TextEditingController();
  TextEditingController tipController = new TextEditingController();

  double beforeTipAmount = 0;
  double afterTipAmount = 0;
  double tipAmount = 15;

  void calculateAfterTipAmount(double beforeTipAmount, double tipAmount) {
    afterTipAmount = beforeTipAmount + (tipAmount * beforeTipAmount) / 100;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    print(value);
                    if (value == "") {
                      beforeTipAmount = 0;
                    } else {
                      beforeTipAmount = double.parse(value);
                    }
                    calculateAfterTipAmount(beforeTipAmount, tipAmount);
                  });
                },
              ),
              TextField(
                controller: tipController,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    print(value);
                    if (value == "") {
                      tipAmount = 0;
                    } else {
                      tipAmount = double.parse(value);
                    }
                    calculateAfterTipAmount(beforeTipAmount, tipAmount);
                  });
                },
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Total Amount : \$ $afterTipAmount ",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Tip: $tipAmount %",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
