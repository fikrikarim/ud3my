# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

instructor1 = User.create!  email: "olivier@nimbl3.com",
                            first_name: "Olivier",
                            last_name: "Robert",
                            citizen_id: "12345678",
                            password: "nimbl3",
                            password_confirmation: "nimbl3",
                            department_name: "Nimbl3",
                            instructor_id: "87654321",
                            role: "instructor"

instructor2 = User.create!  email: "fkfikrikarim@gmail.com",
                            first_name: "Fikri",
                            last_name: "Karim",
                            citizen_id: "10416005",
                            password: "NARUTO",
                            password_confirmation: "NARUTO",
                            department_name: "Microbiology",
                            instructor_id: "16116093",
                            role: "instructor"

student1 = User.create! email: "kratae@gmail.com",
                        first_name: "Kratae",
                        last_name: "Rsiam",
                        citizen_id: "c11111111",
                        student_id: "s11111111",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

student2 = User.create! email: "palmy@gmail.com",
                        first_name: "Palmy",
                        last_name: "Cool",
                        citizen_id: "c22222222",
                        student_id: "s22222222",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

student3 = User.create! email: "michelle@gmail.com",
                        first_name: "Michelle",
                        last_name: "Chen",
                        citizen_id: "c33333333",
                        student_id: "s33333333",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

student4 = User.create! email: "nattasha@gmail.com",
                        first_name: "Nattasha",
                        last_name: "Nauljam",
                        citizen_id: "c44444444",
                        student_id: "s44444444",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

student5 = User.create! email: "somchai@gmail.com",
                        first_name: "Somchai",
                        last_name: "Nan",
                        citizen_id: "c55555555",
                        student_id: "s55555555",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

student6 = User.create! email: "somsak@gmail.com",
                        first_name: "Somsak",
                        last_name: "Fah",
                        citizen_id: "c66666666",
                        student_id: "s66666666",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

student7 = User.create! email: "prasert@gmail.com",
                        first_name: "Prasert",
                        last_name: "Nan",
                        citizen_id: "c77777777",
                        student_id: "s77777777",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

group1 = Group.create! name: "Rock Bottom Singer"
group1.users<<(student1)
group1.users<<(student2)

group2 = Group.create! name: "ภาพยนตร์ที่ฉันรู้"
group2.users<<(student3)
group2.users<<(student4)

group3 = Group.create! name: "Group #3"
