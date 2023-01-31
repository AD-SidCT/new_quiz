
//here in this question_model.dart we will create our question model here


// - create a simple class_named Question{ }
//  - define how a question will look like
//  - every question will have an Id
//  every question will have a title, its the question itself .
//  every question will have a option
class Question {
  final String id;
  final String title;
  final Map<String, bool> options;

  //create an constructor
  Question({
    required this.id,
    required this.title,
    required this.options,
    //option will be like (1:true, 2: fale)
  });

//override the toString method to print the answer on console
  @override
  String toString() {
    return 'Question(id: $id, title: $title, options: $options)';
  }
}