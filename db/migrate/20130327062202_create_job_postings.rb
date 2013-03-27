class CreateJobPostings < ActiveRecord::Migration
  def change
    create_table :job_postings do |t|
      t.references :user
      t.references :company
      t.string :title
      t.string :location
      t.string :description

      t.timestamps
    end
    add_index :job_postings, :user_id
    add_index :job_postings, :company_id
  end
end
