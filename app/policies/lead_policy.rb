class LeadPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # def new?
  #   true
  # end

  def create?
    true
  end

  def show?
    true
  end

  def edit?
    # if user is owner then it should be true. otherwise should be false!
    #  user = current_user
    #  record => @lead [argument passed to 'authorize']
    if user ==  record.user
      true
    else
      false
    end
  end

  def update?
    if user ==  record.user
      true
    else
      false
    end
  end

end
