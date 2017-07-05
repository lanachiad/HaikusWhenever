class CreateHaikus < ActiveRecord::Migration[5.1]
  def change
    create_table :haikus do |t|
      t.string :title
      t.text :first_line
      t.text :second_line
      t.text :third_line
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
