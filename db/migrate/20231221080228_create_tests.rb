class CreateTests < ActiveRecord::Migration[7.1]
  def change
    create_table :tests do |t|
      t.string :name
      t.text :info
      t.string :address

      t.timestamps
    end
  end
end
