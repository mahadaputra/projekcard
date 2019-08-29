class CreateWorkflows < ActiveRecord::Migration[6.0]
  def change
    create_table :workflows do |t|
      t.integer :board_id

      t.timestamps
    end
  end
end
