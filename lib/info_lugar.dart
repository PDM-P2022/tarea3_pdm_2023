import 'package:flutter/material.dart';

class InfoLugar extends StatelessWidget {
  InfoLugar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // espacio alrededor del container/card
      margin: EdgeInsets.all(12),
      child: Container(
        // espacio alrededor pero hacia dentro del container
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Titulo con icono y estrellas
            ListTile(
              leading: Icon(Icons.surfing),
              title: TextTop("Balis beach"),
              subtitle: Wrap(
                children: [Text("***"), Text("4.1")],
              ),
            ),
            // Datos del hotel
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextTitleTable("Duration"),
                    TextCellTable("7 days"),
                  ],
                ),
                Column(
                  children: [
                    TextTitleTable("Participants"),
                    TextCellTable("10 people")
                  ],
                ),
                Column(
                  children: [
                    TextTitleTable("Hotel stay"),
                    TextCellTable("5-star hotel")
                  ],
                ),
              ],
            ),
            Divider(),
            // Precio
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextTotalPrice("Trip price"),
                Text("\$1225.00/Adult"),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Metodos que retornan un Text pero estilizado
  Widget TextTop(String text) => Text(
        text,
        style: MyTextStyles().topTitle,
      );
  Widget TextTitleTable(String text) => Text(
        text,
        style: MyTextStyles().catagoryTable,
      );
  Widget TextCellTable(String text) => Text(
        text,
        style: MyTextStyles().cellTable,
      );
  Widget TextTotalPrice(String text) => Text(
        text,
        style: MyTextStyles().totalPrice,
      );
}

class MyTextStyles {
  final TextStyle topTitle = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.w900,
  );
  final TextStyle catagoryTable = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w300,
  );
  final TextStyle cellTable = TextStyle(fontSize: 14);
  final TextStyle totalPrice = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
}
