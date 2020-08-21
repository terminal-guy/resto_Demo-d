class Alarm {
  Alarm({
    this.isOn,
    this.time,
    this.description,
  });

  String time;
  String description;

  bool isOn; // it will turn the method on

  void toogleOn() {
    isOn = !isOn;
  }
}
