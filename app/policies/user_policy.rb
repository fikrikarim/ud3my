class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def manage?
    user.instructor?
  end

  alias index? manage?
  alias show? manage?
  alias new? manage?
  alias edit? manage?
  alias create? manage?
  alias update? manage?
  alias destroy? manage?
end
