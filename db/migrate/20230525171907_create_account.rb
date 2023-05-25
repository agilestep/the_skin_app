class CreateAccount < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|

      t.string :first_name
      t.string :last_name
      t.string :nick_name
      t.string :email
      t.text :address
      t.integer :account_type

      t.timestamps
    end
  end
end
