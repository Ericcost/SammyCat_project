class JoinTableOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_order_items do |t|

      t.belongs_to :cart, index: true
      t.belongs_to :item, index: true

      t.timestamps
  end
end
