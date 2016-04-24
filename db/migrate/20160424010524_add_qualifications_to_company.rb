class AddQualificationsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :qualifications, :string
  end
end
