student(bob).
student(kurt).
student(urla).
student(mathias).
student(rasmus).
student(magnus).

teacher(martin, ufo).
teacher(anders, mal).

class(ufo).
class(mal).


room(200).
room(100).

week(1).
week(2).
week(3).
week(4).
week(5).
week(6).
week(7).

takes_course(bob, ufo).
takes_course(kurt, ufo).
takes_course(urla, mal).
takes_course(kurt, mal).
takes_course(mathias, ufo).
takes_course(mathias, mal).
takes_course(rasmus, ufo).
takes_course(rasmus, mal).
takes_course(magnus, ufo).
takes_course(magnus, mal).


location(ufo, 200).
location(mal, 100).

schedule(ufo,1).
schedule(mal,2).
schedule(ufo,3).
schedule(mal,4).
schedule(ufo,5).
schedule(mal,6).
schedule(ufo,7).


studentsInRoom(Student, Room,Week) :-
    location(X, Room),
    takes_course(Student,X),
    schedule(X,Week).


classInWeek(Week,Room,Class) :-
    location(Class,Room),
    schedule(Class, Week).

teacherAtWork(Week,Teacher) :-
    schedule(X,Week),
    teacher(Teacher,X).

studentHasTeacher(Teacher,Student) :-
    teacher(Teacher,X),
    takes_course(Student,X).
