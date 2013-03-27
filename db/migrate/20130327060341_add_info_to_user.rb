class AddInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :year, :integer
    add_column :users, :major, :string
    add_column :users, :job_title, :string
    add_column :users, :company_id, :integer
  end
end
