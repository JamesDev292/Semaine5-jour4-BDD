class CreateDogs < ActiveRecord::Migration[7.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :race
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
