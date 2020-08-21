class Alarm {
  Alarm({
    this.isOn,
    this.time,
    this.description,
    this.id,
  });
  int id;
  String time;
  String description;

  bool isOn; // it will turn the method on

  void toogleOn() {
    isOn = !isOn;
  }
}
