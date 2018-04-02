class GroupPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def instructor?
    user.instructor?
  end

  def owner?
    user.group == record
  end

  alias index? instructor?
  alias new? instructor?
  alias create? instructor?
  alias update? instructor?
  alias destroy? instructor?
  alias edit? instructor?
  alias attendants? instructor?
  alias add_attendant? instructor?
  alias remove_attendant? instructor?
  alias edit_submission? owner?
  alias update_submission? owner?

  def show?
    user.instructor? || user.group == record
  end

end
