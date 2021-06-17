import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RrerreWidget extends StatefulWidget {
  RrerreWidget({Key key}) : super(key: key);

  @override
  _RrerreWidgetState createState() => _RrerreWidgetState();
}

class _RrerreWidgetState extends State<RrerreWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<RtyryyRecord>>(
      stream: queryRtyryyRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        List<RtyryyRecord> rrerreRtyryyRecordList = snapshot.data;
        // Customize what your widget looks like with no query results.
        if (snapshot.data.isEmpty) {
          // return Container();
          // For now, we'll just include some dummy data.
          rrerreRtyryyRecordList = createDummyRtyryyRecord(count: 1);
        }
        final rrerreRtyryyRecord = rrerreRtyryyRecordList.first;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFD32F2F),
        );
      },
    );
  }
}
