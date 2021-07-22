class AddUserRoleReferenceToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :user_role, type: :uuid, index: true
  end
end
