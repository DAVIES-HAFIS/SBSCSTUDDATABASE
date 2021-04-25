import 'dart:io';

void main() {
  print('Welcome!!! Please note: this software is case sensitive.');
  print('Kindly input your name:');
  String instructorName = stdin.readLineSync();
  print('Hello!!! $instructorName welcome to SBSC-Student Database');
  print(
      'Would you like to update the Database with a new student data entry? Yes/No');
  String intention = stdin.readLineSync();
  if (intention == 'Yes' || intention == 'yes' || intention == 'YES') {
    studentData();
    print('$instructorName, would you like to execute a new entry: Yes/No ?');
    String response = stdin.readLineSync();

    if (response == 'Yes' || response == 'yes' || response == 'YES') {
      print('Welcome back:');
      studentData();
    } else {
      print('Thank you for your time , do have a lovely day');
    }

    String departmentName = stdin.readLineSync();
    if (departmentName == 'SBSC-Unique' ||
        departmentName == 'SBSC-Lit' ||
        departmentName == 'SBSC-Awesome') {
      print('welcome to $departmentName portal');
    } else {
      print(
          'input a valid department name SBSC-Unique,SBSC-Awesome or SBSC-Lit');
      String departmentName = stdin.readLineSync();
    }
  } else {
    print('Thankyou for your time , do have a lovely day');
  }
}

String studentData() {
  print(
      'Kindly input the department the student would be allocated to SBSC-Unique,SBSC-Awesome or SBSC-Lit:');
  String departmentName = stdin.readLineSync();
  if (departmentName == 'SBSC-Unique' ||
      departmentName == 'SBSC-Lit' ||
      departmentName == 'SBSC-Awesome') {
    print('welcome to $departmentName Database');
  } else {
    print('input a valid department name SBSC-Unique,SBSC-Awesome or SBSC-Lit');
    String departmentName = stdin.readLineSync();
  }
  print('input the student full name:');
  String studentName = stdin.readLineSync();
  print('input the student e-mail address: xyz@yahoo.com');
  String eMail = stdin.readLineSync();
  print('input the student age');
  int Age = int.parse(stdin.readLineSync());
  print('input the student phone-number (+234----)');
  int phoneNum = int.parse(stdin.readLineSync());
  print('input the student gender :Male/Female/Others?');
  String gender = stdin.readLineSync();
  if (gender == 'Male' || gender == 'Female' || gender == 'Others') {
    print('input the student residential  address');
  } else {
    print('input a valid gender:Male/Female/Others?');
    String gender = stdin.readLineSync();
  }
  String residentialAddress = stdin.readLineSync();
  print('input the student bio: e.g flutter intern');
  String bio = stdin.readLineSync();
  print('input the student school fees address');
  int schoolFees = int.parse(stdin.readLineSync());
  print('..........................................');
  print('would you like to view your input: Yes/No?');
  String view = stdin.readLineSync();
  if (view == 'Yes' || view == 'yes' || view == 'YES') {
    print('The department is $departmentName');
    print(studentName);
    print(eMail);
    print(Age);
    print(phoneNum);
    print(gender);
    print(residentialAddress);
    print(bio);
    print(schoolFees);
    print('...................................................');
  } else {
    print('would you like to execute a new entry: Yes/No ?');
    String response = stdin.readLineSync();
    if (response == 'Yes' || response == 'yes' || response == 'YES') {
      print('Welcome back:');
      studentData();
    } else {
      print('Thank you for your time , do have a lovely day');
    }
  }
}
