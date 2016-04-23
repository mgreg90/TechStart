class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.text :about
      t.string :twitter
      t.string :linkedin
      t.string :instagram
      t.string :perks
      t.string :ceo

      t.timestamps null: false
    end
  end
end
