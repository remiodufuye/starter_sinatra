Student.destroy_all
Klass.destroy_all
StudentKlass.destroy_all

remi = Student.create(name:"Remi Odufuye")
matt = Student.create(name:"Matt Heavner")
young = Student.create(name:"Young Han")
kyle = Student.create(name:"Kyle Cole")
ryan = Student.create(name:"Ryan Smith")
jack = Student.create(name:"Jack Ryan")

klass1 = Klass.create(name:"SE")
klass2 = Klass.create(name:"UX/UI")
klass3 = Klass.create(name:"Graphics")
klass4 = Klass.create(name:"Design")
klass5 = Klass.create(name:"Intro")

student_klass1 = StudentKlass.create(student: remi, klass: klass1)
student_klass2 = StudentKlass.create(student: matt, klass: klass2)
student_klass3 = StudentKlass.create(student: young, klass: klass3)
student_klass4 = StudentKlass.create(student: kyle, klass: klass4)
student_klass5 = StudentKlass.create(student: ryan, klass: klass5)
student_klass6 = StudentKlass.create(student: remi, klass: klass3)
student_klass7 = StudentKlass.create(student: remi, klass: klass5)
student_klass8 = StudentKlass.create(student: ryan, klass: klass2)
student_klass9 = StudentKlass.create(student: matt, klass: klass4)
student_klass10 = StudentKlass.create(student: kyle, klass: klass1)