class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.integer :number
      t.timestamp :start
      t.timestamp :end

      t.timestamps
    end
  end
end
