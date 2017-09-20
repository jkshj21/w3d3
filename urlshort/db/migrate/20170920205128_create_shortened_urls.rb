class CreateShortenedUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :shortenedurls do |t|
      t.string :longurl
      t.string :shorturl
      t.integer :user_id
      t.timestamps
    end
    add_index :shortened_urls, :user_id
  end
end
