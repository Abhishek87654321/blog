class RenameTypeToName < ActiveRecord::Migration[6.1]
  def change
    rename_column :categories, :type, :name
  end
end
