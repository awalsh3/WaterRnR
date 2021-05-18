class AddActivityToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :activity, :boolean
  end
end
