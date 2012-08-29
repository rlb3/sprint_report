class RenameEndToEndSprintOnSprint < ActiveRecord::Migration
  def up
    rename_column :sprints, :end, :end_sprint
  end

  def down
    rename_column :sprints, :end_sprint, :end
  end
end
