class ChangeColumName < ActiveRecord::Migration
  def change
    rename_column :companies, :PointofContactemail, :pointOfContactEmail
    rename_column :companies, :PointofContactName, :pointOfContactName
    rename_column :companies, :PointofContactPhone, :pointOfContactPhone
  end
end
