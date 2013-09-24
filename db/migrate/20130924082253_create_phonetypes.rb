class CreatePhonetypes < ActiveRecord::Migration
  def change
    create_table :phonetypes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
