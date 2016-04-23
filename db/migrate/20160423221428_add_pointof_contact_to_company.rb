class AddPointofContactToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :PointofContactemail, :string
    add_column :companies, :PointofContactPhone, :string
    add_column :companies, :PointofContactName, :string
  end
end
