import 'package:flutter/material.dart';
import 'package:newapp/Pages/PinHospitalNameProvider.dart';
import 'package:newapp/Pages/StatesNamesProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(PinHospApp());
}

class PinHospApp extends StatefulWidget {
  @override
  PinHospData createState() => PinHospData();
}
// ignore: camel_case_types
class PinHospData extends State<PinHospApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<PinHospitalNameProvider>(
        create: (context) => PinHospitalNameProvider(),
        child: Consumer<PinHospitalNameProvider>(
          builder: (context, provider, child) {
            if (provider.pinHosp == null) {
              provider.getHosp(context);
              return Center(child: CircularProgressIndicator());
            }
            // when we have the json loaded... let's put the data into a data table widget
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // Data table widget in not scrollable so we have to wrap it in a scroll view when we have a large data set..
              child: SingleChildScrollView(
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Date')),
                    DataColumn(label: Text('Hospital Name')
                    )
                  ],
                  rows: provider.pinHosp.sessions
                      .map((hosp) =>
                  // we return a DataRow every time
                  DataRow(
                    // List<DataCell> cells is required in every row
                      cells: [
                        DataCell(Text(hosp.date)),
                        DataCell(Text(hosp.blockName))
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