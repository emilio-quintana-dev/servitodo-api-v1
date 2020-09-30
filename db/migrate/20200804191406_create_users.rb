class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :zip_code
      t.string :img_url, :default => "https://robohash.org/rerumetmagnam.png?size=300x300&set=set1"

      t.timestamps
    end
  end
end
