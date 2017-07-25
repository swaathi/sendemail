class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.integer :user_id
      t.string :receiver
      t.string :subject
      t.text :body

      t.timestamps
    end
    add_index :emails, :user_id
  end
end
