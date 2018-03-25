class GroupPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    user.instructor?
  end

  def new?
    user.instructor?
  end

  def create?
    user.instructor?
  end

  def update?
    user.instructor?
  end

  def destroy?
    user.instructor?
  end

  def show?
    user.instructor? || user.group == record
  end

  def edit?
    user.instructor?
  end

  def attendants?
    user.instructor?
  end

  def add_attendant?
    user.instructor?
  end

  def remove_attendant?
    user.instructor?
  end

  def edit_submission?
    user.group == record
  end

  def update_submission?
    user.group == record
  end

end
