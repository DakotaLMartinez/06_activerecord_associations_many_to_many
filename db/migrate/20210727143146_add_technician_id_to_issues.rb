class AddTechnicianIdToIssues < ActiveRecord::Migration[5.2]
  def change
    add_reference :issues, :technician, foreign_key: true, null: false
  end
end