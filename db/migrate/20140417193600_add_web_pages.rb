class AddWebPages < ActiveRecord::Migration
  def change
    create_table :web_pages do |t|
      t.string :full_url
      t.string :shortened_url

      t.timestamps
    end
  end
end
