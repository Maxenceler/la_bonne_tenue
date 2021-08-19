class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def new?
    return true
  end

  def create?
    return true
  end


  def update
    raise
    record.user == user

  end

  def destroy
    record.user == user
  end
end
