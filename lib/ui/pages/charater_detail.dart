part of 'pages.dart';

class CharacterDetail extends StatefulWidget {
  final Character character;

  const CharacterDetail({Key key, this.character}) : super(key: key);

  @override
  _CharacterDetailState createState() => _CharacterDetailState();
}

class _CharacterDetailState extends State<CharacterDetail> {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Hero(
            tag: "background-${widget.character.name}",
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: widget.character.color,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      size: 40,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Hero(
                    tag: "image-{$widget.character.name}",
                    child: Image.asset(
                      widget.character.imagePath,
                      height: screenheight * 0.45,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 8.0),
                  child: Hero(
                    tag: "name-{$widget.character.name}",
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        child: Text(
                          widget.character.name,
                          style: AppTheme.heading,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 8, 8, 32),
                  child: Text(
                    widget.character.description,
                    style: AppTheme.subHeading,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
