part of 'models.dart';

class Character {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> color;

  Character({this.name, this.imagePath, this.description, this.color});
}

List character = [
  Character(
    name: "Spongebob",
    imagePath: "assets/images/spongebob.png",
    description:
        "SpongeRobert SquarePants adalah karakter fiksi utama televisi animasi Nickelodeon seri SpongeBob SquarePants. Dia dibuat oleh tokoh biologi laut dan animator Stephen Hillenburg, dan diisi suara oleh Tom Kenny dalam bahasa Inggris. Pengisi suara dalam bahasa Indonesia oleh Ade Kurniyawan.",
    color: [Colors.yellow.shade200, Colors.yellow.shade600],
  )
];
