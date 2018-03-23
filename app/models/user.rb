class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :group, optional: true

  validates :first_name, :last_name, :citizen_id, :role, presence: true

  validates_presence_of :student_id, :if => :student?
  validates_presence_of :instructor_id, :if => :instructor?
  validates_presence_of :department_name, :if => :instructor?

  ransack_alias :search, :first_name_or_last_name_or_student_id_or_group_name

  def student?
    role == "student"
  end

  def instructor?
    role == "instructor"
  end
end
