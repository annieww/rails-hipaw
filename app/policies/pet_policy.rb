class PetPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end

    def show?
      true
    end

    def create?
      true
    end

    def update?
      record.user == admin
    end

    def destroy?
      record.user == admin
    end

  end
end
