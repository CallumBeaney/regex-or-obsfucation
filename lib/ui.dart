import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:magic_text/magic_text.dart';
import 'package:url_launcher/url_launcher.dart';

class GuessButton extends StatelessWidget {
  final VoidCallback submitAnswer;
  final String buttonText;

  const GuessButton({super.key, required this.buttonText, required this.submitAnswer});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 200,
      color: Colors.amber,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.black,
            height: 1.26,
          ),
        ),
        onPressed: () => submitAnswer(),
      ),
    );
  }
}

class QuizBox extends StatelessWidget {
  final String quizText;

  const QuizBox({Key? key, required this.quizText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        width: 460,
        height: quizText.length >= 170 ? 170 : 130,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            if (quizText.length >= 80) {
              final ScrollController scrollController = ScrollController(); // scrollController
              return Scrollbar(
                controller: scrollController, // ↓ you need it assigned in both P + C widgets
                thumbVisibility: true,
                radius: const Radius.circular(0.2),
                child: SingleChildScrollView(
                  controller: scrollController, // ↑ and here
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),

                    /// Thank u MagicText for enabling proper & working text wrapping imagine if Flutter 3 had something like this which it already should do after 5 sodding years
                    child: MagicText(
                      quizText,
                      breakWordCharacter: ' ',
                      smartSizeMode: true,
                      maxFontSize: 24,
                      minFontSize: 20,
                      asyncMode: false,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.justify,
                      textStyle: TextStyle(
                          fontSize: 20, //It is mandatory that the textStyle has a fontsize.
                          fontWeight: FontWeight.normal,
                          color: Colors.blue[500]),
                    ),

                    // Text(
                    //   quizText,
                    //   style: TextStyle(fontSize: 20, color: Colors.blue[500]),
                    //   softWrap: true,
                    // ),
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    quizText,
                    style: TextStyle(fontSize: 25, color: Colors.blue[500]),
                    softWrap: true,
                  ),
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}

class LinkyLad extends StatelessWidget {
  final String text;
  final String name;
  final String? link;

  const LinkyLad({
    super.key,
    required this.text,
    required this.name,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
      child: Text.rich(
        TextSpan(
          text: text,
          style: const TextStyle(fontSize: 14),
          children: [
            TextSpan(
              text: name,
              style: TextStyle(
                // decoration: TextDecoration.underline,
                fontSize: 14,
                color: link == null ? Colors.black : Colors.orange[800],
              ),
              recognizer: link == null ? null : TapGestureRecognizer()
                ?..onTap = () {
                  Uri url = Uri.parse(link!);
                  launchUrl(url);
                },
            ),
          ],
        ),
      ),
    );
  }
}
