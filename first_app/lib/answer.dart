import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback choice;
  final String answerText;

  const Answer(this.choice, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        onPressed: choice,
        child: Text(
          answerText,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
