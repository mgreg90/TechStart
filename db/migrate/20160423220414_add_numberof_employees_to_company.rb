class AddNumberofEmployeesToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :numberofemployees, :integer
  end
end
