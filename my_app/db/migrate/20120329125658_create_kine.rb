class CreateKine < ActiveRecord::Migration
  def change
    create_table :kine do |t|

      t.timestamps
    end
  end
end
