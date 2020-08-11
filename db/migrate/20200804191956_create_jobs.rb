class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :user_id
      t.integer :professional_id
      t.string :status ,:default => "PENDING"

      t.timestamps
    end
  end
end
