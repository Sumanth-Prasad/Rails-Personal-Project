class AddCategoryToNotes < ActiveRecord::Migration[6.1]
  def change
    add_reference :notes, :category, null: false, foreign_key: true
  end
end
