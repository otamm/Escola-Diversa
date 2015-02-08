class AssociateGradesWithSubjects < ActiveRecord::Migration
  def change
    add_column :grades, :subject_id, :integer
    add_column :grades, :user_id, :integer
  end
end
