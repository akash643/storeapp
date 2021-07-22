class CreateUserRoles < ActiveRecord::Migration[6.1]
  def change
      create_table :user_roles,  id: :uuid do |t|
        t.string :name
        t.boolean :is_deleted, default: false
  
        t.timestamps
    end
  end
end
