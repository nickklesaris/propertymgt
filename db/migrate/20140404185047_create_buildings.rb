class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :address, presence: true
      t.string :city, presence: true
      t.string :state, presence: true
      t.string :postcode, presence: true
      t.text :description

      t.timestamps
    end
  end
end
