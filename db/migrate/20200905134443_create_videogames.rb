class CreateVideogames < ActiveRecord::Migration[6.0]
  def change
    create_table :videogames do |t|
      t.string :title
      t.boolean :features_handheld
      t.integer :features_maxplayers
      t.boolean :features_multiplatform
      t.boolean :features_online
      t.string :metadata_genres
      t.boolean :metadata_licensed
      t.string :metadata_publishers
      t.boolean :metadata_sequel
      t.integer :metrics_reviewscore
      t.float :metrics_sales
      t.float :metrics_usedprice
      t.string :release_console
      t.string :release_rating
      t.boolean :release_rerelease
      t.integer :release_year
      t.float :length_allplaystyles_average
      t.float :length_allplaystyles_leisure
      t.float :length_allplaystyles_median
      t.integer :length_allplaystyles_polled
      t.float :length_allplaystyles_rushed
      t.float :length_completionists_average
      t.float :length_completionists_leisure
      t.float :length_completionists_median
      t.integer :length_compltetionists_polled
      t.float :length_completionists_rushed
      t.float :length_mainplusextras_average
      t.float :length_mainplusextras_leisure
      t.float :length_mainplusextras_median
      t.integer :length_mainplusextras_polled
      t.float :length_mainplusextras_rushed
      t.float :length_mainstory_average
      t.float :length_mainstory_leisure
      t.float :length_mainstory_median
      t.integer :length_mainstory_polled
      t.float :length_mainstory_rushed

      t.timestamps
    end
  end
end
