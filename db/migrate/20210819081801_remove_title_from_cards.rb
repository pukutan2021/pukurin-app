class RemoveTitleFromCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :cards, :title, :string
  end
end
