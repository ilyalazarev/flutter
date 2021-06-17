import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Test111Widget extends StatefulWidget {
  Test111Widget({Key key}) : super(key: key);

  @override
  _Test111WidgetState createState() => _Test111WidgetState();
}

class _Test111WidgetState extends State<Test111Widget> {
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      obscureText: false,
      decoration: InputDecoration(
        hintText: '[Some hint text...]',
        hintStyle: FlutterFlowTheme.bodyText1.override(
          fontFamily: 'Poppins',
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0x00000000),
            width: 1,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0x00000000),
            width: 1,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
        ),
      ),
      style: FlutterFlowTheme.bodyText1.override(
        fontFamily: 'Poppins',
      ),
    );
  }
}
