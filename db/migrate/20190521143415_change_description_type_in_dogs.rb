class ChangeDescriptionTypeInDogs < ActiveRecord::Migration[5.2]
  def change
    change_column :dogs, :description, :text
  end
end
