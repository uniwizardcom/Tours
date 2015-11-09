class CreateUsersModels < ActiveRecord::Migration
  def change
    create_table :users_models do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
