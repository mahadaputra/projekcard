class CreateBoardmembers < ActiveRecord::Migration[6.0]
  def change
    create_table :boardmembers do |t|
      t.integer :board_id
      t.integer :user_id
      t.integer :role

      t.timestamps
    end
  end
end
