# Assignment_1 - Programming with predicates  

**Group members:**
- *Morten Feldt*  
- *Mathias Kristensen*  
- *Magnus Klitmose*   
- *Rasmus Lynge*
  
## Student calendar  
  
### The program  
The program is a simple student calendar.  
The program contains a number of students (student), classrooms (room), electives (class), teachers (teacher), and week numbers (week).  
The .pl file for this project can be found [here](https://github.com/Magmose/Math-MMMR/blob/main/Math_Assigment_1/Assignment_1.pl).  
  

## The folowing functions can be used in the program:
Small examples are given to each function. but some functions can be used differently as well.  
* * *
  
### studentsInRoom(Student, Room, Week)  
Find out if a student is in a room a given week:  
```
?- studentsInRoom(rasmus, 200, Week).
Week = 1 ;
Week = 3 ;
Week = 5 ;
Week = 7 ;
```
  
*(use space in the SWI-Prolog Windows tool to get all weeks)*  

* * *

### classInWeek(Week, Room, Class)  
This could be used to find out which weeks a certian class will be in a certain room:  

```
?- classInWeek(Week,200,ufo).
Week = 1 ;
Week = 3 ;
Week = 5 ;
Week = 7
```  
* * *

### teacherAtWork(Week, Teacher)
Find out is a teacher should be at work a certian week or which week a teacher should work:
```
?- teacherAtWork(1,martin)
| .
true.

?- teacherAtWork(Week, anders).
Week = 2 ;
Week = 4 ;
Week = 6 ;
``` 
* * *

### studentHasTeacher(Teacher, Student)  
Find out what teacher a student has or wise versa 
```
?- studentHasTeacher(Teacher, bob).
Teacher = martin ;

?- studentHasTeacher(martin, Student).
Student = bob ;
Student = kurt ;
Student = mathias ;
Student = rasmus ;
Student = magnus.
```
* * *

## Running the program
The program can be run by cloning the [Assignment_1.pl](https://github.com/Magmose/Math-MMMR/blob/main/Math_Assigment_1/Assignment_1.pl) file and run it in SWI-Prolog.  
(On Windows: Open SWI-prolog and click "File" -> "Consult...", find the file, type in commands).  
(On Mac: ?).  

