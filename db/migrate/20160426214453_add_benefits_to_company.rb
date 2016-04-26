class AddBenefitsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :benefits, :string
  end
end
