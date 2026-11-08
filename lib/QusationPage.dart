import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';


final qusNumber = StateProvider<int>((ref) => 0);

final GreadQus = StateProvider<int>((ref) => 0);

final selectedAnswerProvider = StateProvider<int>((ref) => -1);

class Qusationpage extends ConsumerWidget {
  const Qusationpage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final currentQuestion = ref.watch(qusNumber);

    final Grades = ref.watch(GreadQus);

    final selectedAnswer = ref.watch(selectedAnswerProvider);

    List<Map<String, dynamic>> ques = [
      {
        'qustaion': 'What is Flutter?',
        'optinos': [
          'A programming language',
          'A UI framework',
          'A database',
          'An operating system'
        ],
        'Answer': 2,
      },

      {
        'qustaion': 'Which programming language is used in Flutter?',
        'optinos': [
          'Java',
          'Python',
          'Dart',
          'JavaScript'
        ],
        'Answer': 3,
      },

      {
        'qustaion': 'Which widget is used to display text in Flutter?',
        'optinos': [
          'TextField',
          'Container',
          'Text',
          'Image'
        ],
        'Answer': 3,
      },

      {
        'qustaion': 'Which widget is used to arrange its children vertically?',
        'optinos': [
          'Row',
          'Column',
          'Stack',
          'ListView'
        ],
        'Answer': 2,
      },

      {
        'qustaion': 'Which widget is used to make a widget respond to user interaction?',
        'optinos': [
          'Scaffold',
          'AppBar',
          'GestureDetector',
          'Padding'
        ],
        'Answer': 3,
      },

    ];


    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text(
          "Flutter Quiz",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.blue,
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),

        child: currentQuestion >= ques.length
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [



            const SizedBox(height: 20),



            const SizedBox(height: 25),

            Text(
              'Your Score: $Grades / ${ques.length}',
              style: const TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Text(
              'Correct Answers: $Grades',
              style: const TextStyle(fontSize: 18),
            ),

            Text(
              'Incorrect Answers: ${ques.length - Grades}',
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),


            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed: () {

                  ref.read(qusNumber.notifier).state = 0;

                  ref.read(GreadQus.notifier).state = 0;

                  ref.read(selectedAnswerProvider.notifier).state = -1;

                },
                child: const Text(
                  'Restart Quiz',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

          ],
        )
            : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  'Question ${currentQuestion + 1} / ${ques.length}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  'Score: $Grades',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.amber,
                  ),
                ),

              ],
            ),

            const SizedBox(height: 20),
            LinearProgressIndicator(
              value: (currentQuestion + 1) / ques.length,
              minHeight: 8,
              borderRadius: BorderRadius.circular(20),
            ),

            const SizedBox(height: 35),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.blue,
                  ],
                ),
              ),

              child: Text(
                ques[currentQuestion]['qustaion'],
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),
            ...List.generate(
              ques[currentQuestion]['optinos'].length,

                  (index) {

                final answer =
                ques[currentQuestion]['optinos'][index];

                final correctAnswer =
                ques[currentQuestion]['Answer'];

                final isSelected =
                    selectedAnswer == index;

                Color cardColor = const Color(0xff292938);
                if (selectedAnswer != -1) {

                  if (index + 1 == correctAnswer) {

                    cardColor = Colors.green;

                  } else if (isSelected) {

                    cardColor = Colors.red;

                  }

                }


                return GestureDetector(

                  onTap: () {

                    if (selectedAnswer == -1) {

                      ref.read(
                        selectedAnswerProvider.notifier,
                      ).state = index;

                    }

                  },

                  child: Container(

                    width: double.infinity,

                    margin: const EdgeInsets.only(bottom: 15),

                    padding: const EdgeInsets.all(20),

                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: Colors.white24,
                      ),
                    ),

                    child: Row(
                      children: [

                        Expanded(
                          child: Text(
                            answer,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        if (selectedAnswer != -1 &&
                            index + 1 == correctAnswer)

                          const Icon(
                            Icons.check_circle,
                            color: Colors.white,
                          ),

                        if (isSelected &&
                            index + 1 != correctAnswer)

                          const Icon(
                            Icons.cancel,
                            color: Colors.white,
                          ),

                      ],
                    ),
                  ),
                );

              },
            ),

            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(

                onPressed: selectedAnswer == -1
                    ? null
                    : () {
                  if (selectedAnswer + 1 ==
                      ques[currentQuestion]['Answer']) {

                    ref.read(GreadQus.notifier).state++;

                  }

                  ref.read(qusNumber.notifier).state++;
                  ref.read(selectedAnswerProvider.notifier).state = -1;

                },

                child: Text(
                  currentQuestion == ques.length - 1
                      ? 'Finish Quiz'
                      : 'Next Question',

                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}