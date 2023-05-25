class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :name
      t.integer :type

      t.timestamps
    end
  end
end
