class AddSrcToImages < ActiveRecord::Migration[7.0]
  def up
    add_column :images, :storage, :string
  end

  def down
    remove_column :images, :storage, :string
  end

end
