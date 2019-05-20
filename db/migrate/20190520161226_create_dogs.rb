class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :breed
      t.string :gender
      t.string :age
      t.string :description
      t.string :photo
      t.string :location

      t.timestamps
    end
  end
end
