class AddCategoryToImages < ActiveRecord::Migration[5.1]
  def change
    add_reference :images, :category, foreign_key: true
  end
end
