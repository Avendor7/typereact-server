class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.belongs_to :user, foreign_key: true
      t.date :date
      t.text :content
      t.timestamps
    end
  end
end
