class CreatePhonenumbers < ActiveRecord::Migration
  def change
    create_table :phonenumbers do |t|
      t.integer :person_id
      t.string :number
      t.integer :phonetype_id
      t.text :description

      t.timestamps
    end
  end
end
