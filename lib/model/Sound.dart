class Sound {
  final String id;
  final String name;
  final String img;
  final String sound;

  const Sound(
      {required this.id,
      required this.name,
      required this.img,
      required this.sound});
}

const imgFolder = "assets/img";
const audioFolder = "assets/audio";

List<Sound> sounds = [
  const Sound(
    id: "1",
    name: "Ba Dum Tss",
    img: "$imgFolder/baDumTss.png",
    sound: "$audioFolder/baDumTss.mp3",
  ),
  const Sound(
    id: "2",
    name: "Titanic Flute",
    img: "$imgFolder/titanicFlute.png",
    sound: "$audioFolder/titanicFlute.mp3",
  ),
  const Sound(
    id: "3",
    name: "Scomesse Clandestine",
    img: "$imgFolder/scomesseClandestine.PNG",
    sound: "$audioFolder/scomesseClandestine.mp3",
  ),
  const Sound(
    id: "4",
    name: "Se Proprio",
    img: "$imgFolder/seProprio.png",
    sound: "$audioFolder/seProprio.mp3",
  ),
];
