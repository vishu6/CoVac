import 'package:flutter/material.dart';
import 'package:newapp/Pages/StatesNamesProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(StatesApp());
}

class StatesApp extends StatefulWidget {
  @override
  StatesData createState() => StatesData();
}
// ignore: camel_case_types
class StatesData extends State<StatesApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<StatesNamesProvider>(
        create: (context) => StatesNamesProvider(),
        child: Consumer<StatesNamesProvider>(
          builder: (context, provider, child) {
            if (provider.states == null) {
              provider.getStates(context);
              return Center(child: CircularProgressIndicator());
            }
            // when we have the json loaded... let's put the data into a data table widget
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // Data table widget in not scrollable so we have to wrap it in a scroll view when we have a large data set..
              child: SingleChildScrollView(
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('State Name'),
                        tooltip: 'vaccine Available State Names'),
                    DataColumn(label: Text('Districts'),
                        tooltip: 'District list')

                  ],
                  rows: provider.states.states
                      .map((states) =>
                  // we return a DataRow every time
                  DataRow(
                    // List<DataCell> cells is required in every row
                      cells: [
                        DataCell(Text(states.stateName)),
                        DataCell(Text('Check Districts'))
                      ]))
                      .toList(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}