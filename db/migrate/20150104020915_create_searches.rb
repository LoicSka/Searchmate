class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :title
      t.references :category, index: true 
      t.text :result, default: "Nothing found"
      t.timestamps
    end
  end
end
