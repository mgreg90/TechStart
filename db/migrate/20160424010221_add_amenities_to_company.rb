class AddAmenitiesToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :amenities, :string
  end
end
