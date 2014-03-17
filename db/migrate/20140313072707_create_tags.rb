class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
    	t.string 	:name
    	t.integer 	:level #1 is for nav bar, #2 is for sub-tag
      	t.timestamps
    end
  end
end
