

class Api {
  String? dateAndTime;
  String? id;

  Future<String> getDateAndTIme() {
    return Future.delayed(
      const Duration(seconds: 1),
      () async {
        return DateTime.now().toString();
      },
    ).then(
      (value) {
        dateAndTime = value;
        return value;
      },
    );
  }
}
