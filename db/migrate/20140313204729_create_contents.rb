class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string 	:name
      t.text 	:desc
      t.string 	:image_url
      t.string 	:source_url
      t.integer  :content_type # 1=Book, 2=Article, or 3=Framework
      t.timestamps
    end
  end
end
