class AddParamsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :integer, default: -1
    add_column :users, :birth_date, :datetime
    add_column :users, :introduction, :text
  end
end
