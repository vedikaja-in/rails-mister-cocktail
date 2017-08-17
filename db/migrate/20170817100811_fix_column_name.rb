class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :doses, :cococktail_id, :cocktail_id
  end
end
