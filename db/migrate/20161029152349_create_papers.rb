class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :name
      t.string :venue
      t.integer :year

      t.timestamps null: false
    end
	create_table :authors_papers, id: false do |t|
      t.belongs_to :author, index: true
      t.belongs_to :paper, index: true
    end
  end
end
