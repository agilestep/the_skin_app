class AddBlackAndWhilteSourceToImage < ActiveRecord::Migration[7.0]
  def up
    add_column :images, :storage_bw, :string
  end

  def down
    remove_column :images, :storage_bw, :string
  end

end
