import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:obd2_dashboard/models/obd2_data_model.dart';
import 'package:obd2_dashboard/models/serial_reader_model.dart';
import 'package:obd2_dashboard/pages/home.dart';
import 'package:obd2_dashboard/pages/graphs.dart';
import 'package:obd2_dashboard/services/logger.dart';
import 'package:obd2_dashboard/widgets/footer.dart';
import 'package:provider/provider.dart';

void main() async {
  Logger.level = Level.debug;
  await logger.initialize();

  logger.info('Starting app');

  final SerialReaderModel reader = SerialReaderModel();
  final OBD2DataModel dataModel = OBD2DataModel();

  dataModel.listen(reader);

  runApp(
    OBD2Dashboard(
      dataModel: dataModel,
      serialReader: reader,
    ),
  );
}

class OBD2Dashboard extends StatefulWidget {
  final SerialReaderModel serialReader;
  final OBD2DataModel dataModel;

  const OBD2Dashboard({
    super.key,
    required this.serialReader,
    required this.dataModel,
  });

  @override
  State<OBD2Dashboard> createState() => _OBD2DashboardState();
}

class _OBD2DashboardState extends State<OBD2Dashboard> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OBD2 Dashboard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<SerialReaderModel>.value(
            value: widget.serialReader,
          ),
          ChangeNotifierProvider<OBD2DataModel>.value(value: widget.dataModel),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('OBD2 Dashboard'),
          ),
          drawer: SizedBox(
            width: 250,
            child: NavigationRail(
              useIndicator: true,
              extended: true,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.analytics_outlined),
                  label: Text('Graphs'),
                ),
              ],
              selectedIndex: selectedPage,
              onDestinationSelected: (value) =>
                  setState(() => selectedPage = value),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: switch (selectedPage) {
                  0 => const HomePage(),
                  1 => const GraphPage(),
                  _ => throw UnimplementedError(),
                },
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
