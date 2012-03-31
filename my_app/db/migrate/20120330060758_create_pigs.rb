class CreatePigs < ActiveRecord::Migration
  def change
    create_table :pigs do |t|

      t.timestamps
    end
  end
end
