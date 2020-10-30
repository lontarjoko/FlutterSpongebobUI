part of 'pages.dart';

class CharactersList extends StatefulWidget {
  @override
  _CharactersListState createState() => _CharactersListState();
}

class _CharactersListState extends State<CharactersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Spongebob", style: AppTheme.display1),
                      TextSpan(text: "\n"),
                      TextSpan(text: "Characters", style: AppTheme.display2)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: CharacterWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
