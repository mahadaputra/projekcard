class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.text :content
      t.string :tipe
      t.integer :user_id
      t.integer :board_id
      t.integer :status

      t.timestamps
    end
  end
end
