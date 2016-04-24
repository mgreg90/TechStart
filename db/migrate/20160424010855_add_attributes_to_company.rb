class AddAttributesToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :city, :string
    add_column :companies, :state, :string
    add_column :companies, :zip, :string
    add_column :companies, :meetup, :string
  end
end
