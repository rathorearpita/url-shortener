class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :url, null: false, index: true
      t.string :shorten, index: true
      t.integer :clicks, default: 0

      t.timestamps
    end
  end
end
