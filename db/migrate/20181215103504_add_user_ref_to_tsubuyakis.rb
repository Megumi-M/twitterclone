class AddUserRefToTsubuyakis < ActiveRecord::Migration[5.1]
  def change
    add_reference :tsubuyakis, :user, foreign_key: true
  end
end
