class CreateHaikus < ActiveRecord::Migration[5.1]
  def change
    create_table :haikus do |t|
      t.text :poem
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
