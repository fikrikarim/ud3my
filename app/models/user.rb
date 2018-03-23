class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :group, optional: true

  validates :first_name, :last_name, :citizen_id, :role, presence: true

  # validates_presence_of :first_name
  # validates_presence_of :last_name
  # validates_presence_of :citizen_id
  # validates_presence_of :role
  validates_presence_of :student_id, :if => :student?
  validates_presence_of :instructor_id, :if => :instructor?
  validates_presence_of :department_name, :if => :instructor?

  def student?
    role == "student"
  end

  def instructor?
    role == "instructor"
  end
end
