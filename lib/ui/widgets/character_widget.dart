part of 'widgets.dart';

class CharacterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 350),
                pageBuilder: (context, _, __) =>
                    CharacterDetail(character: character[0])));
      },
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: CardBackground(),
              child: Hero(
                tag: "background-${character[0].name}",
                child: Container(
                  height: screenheight * 0.55,
                  width: screenWidth * 0.9,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: character[0].color,
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.4),
            child: Hero(
              tag: "image-${character[0].name}",
              child: Image.asset(
                character[0].imagePath,
                height: screenheight * 0.50,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48, right: 18, bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Hero(
                  tag: "name-${character[0].name}",
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      child: Text(
                        character[0].name,
                        style: AppTheme.heading,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Tap to read more",
                  style: AppTheme.subHeading,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
