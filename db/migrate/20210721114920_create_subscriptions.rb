class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions, id: :uuid do |t|
        t.integer :plan_name_id
        t.integer :user_id
        t.string :price
        t.integer :status, default: 0
        t.string :token
        t.string :charge_id
        t.integer :payment_gateway
        t.timestamps
    end
  end
end
