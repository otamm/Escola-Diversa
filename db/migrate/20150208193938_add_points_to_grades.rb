class AddPointsToGrades < ActiveRecord::Migration
  def change
    add_column :grades, :points, :decimal, precision: 3, scale: 1 # precision: number of digits in the total number (biggest is 10.0); scale: number of digits after dot (from .0 to .9)
  end
end
