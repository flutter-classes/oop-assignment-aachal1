void main() {
  student Stu = student(
      rollNumber: 1,
      studentName: 'Aachal Sah',
      mark1: 50,
      mark2: 60,
      mark3: 70,
      fullMark: 300,
      totalMark: 0);

  Stu.displayDetails();
  Stu.calculateTotal();
  Stu.calculatePercentage();
}

class student {
  final int rollNumber;
  final String studentName;
  int mark1;
  int mark2;
  int mark3;
  int fullMark;
  int totalMark;

  student(
      {required this.rollNumber,
      required this.studentName,
      required this.mark1,
      required this.mark2,
      required this.mark3,
      required this.fullMark,
      required this.totalMark});

  displayDetails() {
    print('Student name is $studentName');
    print('Student roll is $rollNumber');
    print('Mark of subject1 is $mark1');
    print('Mark of subject2 is $mark2');
    print('Mark of subject3 is $mark3');
    print('Fullmark of all subject is $fullMark');
  }

  calculateTotal() {
    totalMark = mark1 + mark2 + mark3;
    print("TotalMark Of all subject is $totalMark");
  }

  calculatePercentage() {
    num percentage;

    percentage = (totalMark / fullMark) * 100;
    print('Total percentage of $studentName is $percentage%');
  }
}
