class AddNameAndPeriodToYears < ActiveRecord::Migration
  def change
    add_column :years, :name, :string
    add_column :years, :period, :string
  end
end
