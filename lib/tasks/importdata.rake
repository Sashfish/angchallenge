require 'csv'
namespace :importdata do
  desc "inport data"
  task import: :environment do
  p 'Beginning import'
	CSV.foreach(Rails.root.join('.', 'lib', 'assets', 'video_games.csv'), :headers =>true) do |row|
    p 'Importing game ' + row[0].to_s
    Videogame.create!(
      title: row[0].to_s,
      features_handheld: row[1],
      features_maxplayers: row[2].to_i,
      features_multiplatform: row[3],
      features_online: row[4],
      metadata_genres: row[5].to_s,
      metadata_publishers: row[6].to_s,
      metadata_sequel: row[7],
      metrics_reviewscore: row[8].to_i,
      metrics_sales: row[9].to_f,
      metrics_usedprice: row[10].to_f,
      release_console: row[11].to_s,
      release_rating: row[12].to_s,
      release_rerelease: row[13],
      release_year: row[14].to_i,
      length_allplaystyles_average: row[15].to_f,
      length_allplaystyles_leisure: row[16].to_f,
      length_allplaystyles_median: row[17].to_f,
      length_allplaystyles_polled: row[18].to_i,
      length_allplaystyles_rushed: row[19].to_f,
      length_completionists_average: row[20].to_f,
      length_completionists_leisure: row[21].to_f,
      length_completionists_median: row[22].to_f,
      length_compltetionists_polled: row[23].to_i,
      length_completionists_rushed: row[24].to_f,
      length_mainplusextras_average: row[25].to_f,
      length_mainplusextras_leisure: row[26].to_f,
      length_mainplusextras_median: row[27].to_f,
      length_mainplusextras_polled: row[28].to_i,
      length_mainplusextras_rushed: row[29].to_f,
      length_mainstory_average: row[30].to_f,
      length_mainstory_leisure: row[31].to_f,
      length_mainstory_median: row[32].to_f,
      length_mainstory_polled: row[33].to_i,
      length_mainstory_rushed: row[34].to_f
    )
  end
end
end
