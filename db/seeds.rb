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
                            department_name: "Microbiology yay",
                            instructor_id: "16116093",
                            role: "instructor"

student1 = User.create! email: "kratae@gmail.com",
                        first_name: "Kratae",
                        last_name: "Rsiam",
                        citizen_id: "84419957",
                        student_id: "68883848",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

student2 = User.create! email: "palmy@gmail.com",
                        first_name: "Palmy",
                        last_name: "Hand",
                        citizen_id: "29742039",
                        student_id: "85364979",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

student3 = User.create! email: "Shen@gmail.com",
                        first_name: "Shen",
                        last_name: "Chia-Yi",
                        citizen_id: "37234749",
                        student_id: "71902308",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

student4 = User.create! email: "nattasha@gmail.com",
                        first_name: "Nattasha",
                        last_name: "Nauljam",
                        citizen_id: "39349363",
                        student_id: "51006564",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

student5 = User.create! email: "somchai@gmail.com",
                        first_name: "Somchai",
                        last_name: "Nan",
                        citizen_id: "11529265",
                        student_id: "86392057",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

student6 = User.create! email: "somsak@gmail.com",
                        first_name: "Somsak",
                        last_name: "Fah",
                        citizen_id: "79448469",
                        student_id: "93886838",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

student7 = User.create! email: "prasert@gmail.com",
                        first_name: "Prasert",
                        last_name: "Nan",
                        citizen_id: "22253660",
                        student_id: "62433022",
                        password: "nimbl3",
                        password_confirmation: "nimbl3",
                        role: "student"

group1 = Group.create! name: "Thaiband 🇹🇭",
                       project: "Create a catchy music video",
                       submission: "https://www.youtube.com/watch?v=y6120QOlsfU",
                       score: "100"
group1.users<<(student1)
group1.users<<(student2)

group2 = Group.create! name: "ภาพยนตร์ที่ฉันรู้",
                       project: "Search a movie that you think shows best side of humanity",
                       submission: "www.imdb.com/title/tt0050083/"
group2.users<<(student3)
group2.users<<(student4)

group3 = Group.create! name: "ฉันไม่รู้ว่าการแปลถูกต้องหรือไม่"
group2.users<<(student5)

group4 = Group.create! name: "Group #4"
