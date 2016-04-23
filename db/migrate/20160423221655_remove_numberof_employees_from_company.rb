class RemoveNumberofEmployeesFromCompany < ActiveRecord::Migration
  def change
    change_column :companies, :numberofemployees, :string
  end
end
