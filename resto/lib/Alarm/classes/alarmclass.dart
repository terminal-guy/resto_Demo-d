class Alarm {
  Alarm({
    this.isOn,
    this.time,
    this.title,
  });

  String time;
  String title;

  bool isOn;

  void toogleOn() {
    isOn = !isOn;
  }
}
