require 'rails_helper'

RSpec.describe User, type: :model do

  it "instructor is valid with all parameters" do
    expect(create(:instructor)).to be_valid
  end

  it "user is invalid without selecting role" do
    user = build(:instructor, role: nil)
    user.valid?
    expect(user.errors[:role]).to include("can't be blank")
  end

  it "instructor is invalid without department_name" do
    user = build(:instructor, department_name: nil)
    user.valid?
    expect(user.errors[:department_name]).to include("can't be blank")
  end

  it "instructor is invalid without instructor_id" do
    user = build(:instructor, instructor_id: nil)
    user.valid?
    expect(user.errors[:instructor_id]).to include("can't be blank")
  end

  it "instructor is valid without student_id" do
    expect(create(:instructor, student_id: nil)).to be_valid
  end

  it "student is valid with all parameters" do
    expect(create(:student)).to be_valid
  end

  it "student is invalid without student_id" do
    user = build(:student, student_id: nil)
    user.valid?
    expect(user.errors[:student_id]).to include("can't be blank")
  end

  it "student is valid without department_name" do
    expect(create(:student, department_name: nil)).to be_valid
  end

  it "either student or instructor are invalid without citizen_id" do
    user = build(:student, citizen_id: nil)
    user.valid?
    user2 = build(:instructor, citizen_id: nil)
    user2.valid?
    expect(user.errors[:citizen_id]).to include("can't be blank")
    expect(user2.errors[:citizen_id]).to include("can't be blank")
  end

  it "either student or instructor are invalid without first_name" do
    user = build(:student, first_name: nil)
    user.valid?
    user2 = build(:instructor, first_name: nil)
    user2.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
    expect(user2.errors[:first_name]).to include("can't be blank")
  end

  it "either student or instructor are invalid without last_name" do
    user = build(:student, last_name: nil)
    user.valid?
    user2 = build(:instructor, last_name: nil)
    user2.valid?
    expect(user.errors[:last_name]).to include("can't be blank")
    expect(user2.errors[:last_name]).to include("can't be blank")
  end

  it "either student or instructor are invalid without email" do
    user = build(:student, email: nil)
    user.valid?
    user2 = build(:instructor, email: nil)
    user2.valid?
    expect(user.errors[:email]).to include("can't be blank")
    expect(user2.errors[:email]).to include("can't be blank")
  end

  it "either student or instructor are invalid without password" do
    user = build(:student, password: nil)
    user.valid?
    user2 = build(:instructor, password: nil)
    user2.valid?
    expect(user.errors[:password]).to include("can't be blank")
    expect(user2.errors[:password]).to include("can't be blank")
  end

end
