FactoryGirl.define do
  sequence :email do |n|
    "user#{n}@nimbl3.com"
  end

  factory :instructor, :class => 'User' do
    email
    password "nimbl3"
    password_confirmation "nimbl3"
    first_name "Olivier"
    last_name "Robert"
    citizen_id "12345678"
    department_name "Nimbl3"
    instructor_id "87654321"
    role "instructor"
  end

  factory :student, :class => 'User' do
    email
    password "nimbl3"
    password_confirmation "nimbl3"
    first_name "Olivier"
    last_name "Robert"
    student_id "12345678"
    citizen_id "12345678"
    role "student"
  end

  factory :user, :class => 'User' do
    email
    password "nimbl3"
    password_confirmation "nimbl3"
    first_name "Olivier"
    last_name "Robert"
    student_id "12345678"
    citizen_id "12345678"
    role "student"
  end
end
