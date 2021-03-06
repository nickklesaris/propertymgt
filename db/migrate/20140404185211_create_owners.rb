class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :first_name, presence: true
      t.string :last_name, presence: true
      t.string :email, presence: true
      t.string :company

      t.timestamps
    end
  end
end
