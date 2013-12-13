class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user (not logged in)
      if user.admin?
        can :manage, :all
      else
        can :read, :all

        # cannot DESTROY or UPDATE other USERS!
        can :create, User
        can :update, User do |user|
            current_user.id == user.id
        end
        can :destroy, User do |user|
            current_user.id == user.id
        end

        can :create, Photo
        can :update, Photo do |photo|
            photo.user == user
        end
        can :destroy, Photo do |photo|
            photo.user == user
        end

        can :create, Memory
        can :update, Memory do |memory|
            memory.user == user
        end
        can :destroy, Memory do |memory|
            memory.user == user
        end
      end
  end

end
