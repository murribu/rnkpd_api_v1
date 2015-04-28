class PodcastsEpisodes < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string    :name
      t.string    :feed
      t.string    :url
      t.boolean   :active
      
      t.timestamps null: false
    end
    
    create_table :episodes do |t|
      t.references :podcast, index: true, foreign_key: true
      t.string    :guid
      t.string    :name
      t.text      :description
      t.integer   :duration
      t.boolean   :explicit
      t.integer   :filesize
      t.string    :img
      t.string    :link
      t.datetime  :pubdate
      t.string    :url
      
      t.timestamps null: false
    end
  end
end
