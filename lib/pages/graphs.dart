import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:obd2_dashboard/models/obd2_data_model.dart';
import 'package:obd2_dashboard/widgets/obd_variable_graph.dart';
import 'package:obd2_dashboard/widgets/variable_card.dart';
import 'package:provider/provider.dart';

class GraphPage extends StatefulWidget {
  const GraphPage({super.key});

  @override
  State<GraphPage> createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool wantKeepAlive = true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final OBD2DataModel dataModel = context.watch<OBD2DataModel>();

    return LayoutGrid(
      areas: '''
                graph1      graph2
                graph3      graph4
              ''',
      columnSizes: [1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr],
      columnGap: 5,
      rowGap: 5,
      gridFit: GridFit.expand,
      children: [
        VariableCard(
          padding: 2,
          child: OBD2VariableGraph(model: dataModel),
        ).inGridArea('graph1'),
        VariableCard(
          padding: 2,
          child: OBD2VariableGraph(model: dataModel),
        ).inGridArea('graph2'),
        VariableCard(
          padding: 2,
          child: OBD2VariableGraph(model: dataModel),
        ).inGridArea('graph3'),
        VariableCard(
          padding: 2,
          child: OBD2VariableGraph(model: dataModel),
        ).inGridArea('graph4'),
      ],
    );
  }
}
