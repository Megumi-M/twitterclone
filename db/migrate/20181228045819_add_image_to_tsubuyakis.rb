class AddImageToTsubuyakis < ActiveRecord::Migration[5.1]
  def change
    add_column :tsubuyakis, :image, :text
  end
end
