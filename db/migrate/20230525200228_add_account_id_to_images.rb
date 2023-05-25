class AddAccountIdToImages < ActiveRecord::Migration[7.0]

    def up
      add_column :images, :account_id, :integer
    end

    def down
      remove_column :images, :account_id, :integer
    end

end
