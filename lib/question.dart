import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  final String quostionText;

  const Question(this.quostionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(quostionText);
  }
}
