class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :email_id
    	t.string :password
    	t.string :fname
    	t.string :lname
      t.timestamps
    end
  end
end
