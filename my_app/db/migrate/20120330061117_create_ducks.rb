class CreateDucks < ActiveRecord::Migration
  def change
    create_table :ducks do |t|

      t.timestamps
    end
  end
end
