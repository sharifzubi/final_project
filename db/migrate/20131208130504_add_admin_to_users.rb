class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    # now have access to:
    # if current_user.admin?
    # if current_user.try(:admin?).. use if current_user could be NIL
    # current_user.update_attribute :admin, true
  end
end
