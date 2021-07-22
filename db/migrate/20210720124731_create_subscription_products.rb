class CreateSubscriptionProducts < ActiveRecord::Migration[6.1]
  def change
      create_table :subscription_products, id: :uuid  do |t|
        t.string :plan_name
        t.string :price
        t.timestamps
    end
  end
end
