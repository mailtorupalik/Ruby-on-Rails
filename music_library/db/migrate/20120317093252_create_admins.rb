class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :title
      t.string :artist
      t.date :release_date
      t.string :genre

      t.timestamps
    end
  end
end
