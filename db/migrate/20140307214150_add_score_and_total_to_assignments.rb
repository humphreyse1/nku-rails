class AddScoreAndTotalToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :score, :total
  end
end
