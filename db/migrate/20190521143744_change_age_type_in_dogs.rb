class ChangeAgeTypeInDogs < ActiveRecord::Migration[5.2]
  def change
    change_column :dogs, :age, 'integer USING CAST(age AS integer)'
  end
end

