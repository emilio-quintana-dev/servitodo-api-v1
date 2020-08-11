class CreateProfessionals < ActiveRecord::Migration[6.0]
  def change
    create_table :professionals do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :times_hired ,:default => 0
      t.integer :time_in_bussiness ,:default => 0
      t.string :introduction
      t.integer :category_id
      t.integer :zip_code
      t.integer :average_reviews, :default => 0
      t.integer :estimated_cost

      t.timestamps
    end
  end
end
