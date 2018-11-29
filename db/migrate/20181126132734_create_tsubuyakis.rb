class CreateTsubuyakis < ActiveRecord::Migration[5.1]
  def change
    create_table :tsubuyakis do |t|
      t.text :content

      t.timestamps
    end
  end
end
