class CreateBarnyards < ActiveRecord::Migration
  def change
    create_table :barnyards do |t|

      t.timestamps
    end
  end
end
