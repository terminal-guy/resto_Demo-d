class Alarm {
  Alarm({
    this.isOn,
    this.time,
    this.title,
  });

  String time;
  String title;

  bool isOn; // it will turn the method on

  void toogleOn() {
    isOn = !isOn;
  }
}
