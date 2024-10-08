import 'package:flutter/material.dart';
import 'package:stateful_app/api/api.dart';
import 'package:stateful_app/provider/api_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueKey _textKey = const ValueKey<String?>(null);

  String title = "Tap the screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ApiProvider.of(context).api.dateAndTime ?? ""),
      ),
      body: GestureDetector(
        onTap: () async {
          final api = ApiProvider.of(context).api;
          final timeAndDate = api.getDateAndTIme();
          setState(
            () {
              _textKey = ValueKey(timeAndDate);
            },
          );
        },
        child: SizedBox.expand(
          child: Container(
            color: Colors.white,
            child: DateTimeWidget(key: _textKey),
          ),
        ),
      ),
    );
  }
}

class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final api = ApiProvider.of(context).api;

    // TODO: implement build
    return Text(
      api.dateAndTime ?? 'Tap on screen to fetch date and time',
    );
  }
}
