# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

System.create(country_name: "USA", economic_system: "FreeMarketCapitalism", economic_index: 1, governmental_system: "RepresentitiveRepublic", governmental_index: 1, cultural_system: "ClassicalLiberalism", cultural_index: 1, image_url: "https://erepublic.brightspotcdn.com/dims4/default/e4644b2/2147483647/strip/true/crop/1000x521+0+73/resize/840x438!/quality/90/?url=http%3A%2F%2Ferepublic-brightspot.s3.us-west-2.amazonaws.com%2F44%2F65%2F34d730834cf59eb7b19871a77cf0%2Fshutterstock-223572436.jpg", wiki_page: "https://en.wikipedia.org/wiki/United_States")
System.create(country_name: "Canada", economic_system: "Socialism", economic_index: 2, governmental_system: "ParliamentaryDemocracy", governmental_index: 2, cultural_system: "ModernLiberalism", cultural_index: 2, image_url: "https://c8.alamy.com/comp/EPCCCG/canada-political-map-with-capital-ottawa-national-borders-important-EPCCCG.jpg", wiki_page: "https://en.wikipedia.org/wiki/Canada")
System.create(country_name: "N.Korea", economic_system: "Communism", economic_index: 3, governmental_system: "AuthoritarianCommunism", governmental_index: 3, cultural_system: "Athiest", cultural_index: 3, image_url: "https://www.38north.org/wp-content/uploads/2023/03/Fig2-Nightlights-23-0403-scaled.jpg", wiki_page: "https://en.wikipedia.org/wiki/North_Korea")
System.create(country_name: "Sweden", economic_system: "Socialism", economic_index: 2, governmental_system: "ParliamentaryDemocracy", governmental_index: 2, cultural_system: "ModernLiberalism", cultural_index: 2, image_url: "https://cdn.britannica.com/96/69896-004-9E9272BD/Map-of-Sweden.jpg", wiki_page: "https://en.wikipedia.org/wiki/Sweden")
System.create(country_name: "Japan", economic_system: "FreeMarketCapitalism", economic_index: 1, governmental_system: "RepresentitiveRepublic", governmental_index: 1, cultural_system: "Athiest", cultural_index: 3, image_url: "https://cdn.britannica.com/95/1795-050-9EFCC4F0/Japan-map-features-locator.jpg", wiki_page: "https://en.wikipedia.org/wiki/Japan")
System.create(country_name: "Russia", economic_system: "Capitalist", economic_index: 1, governmental_system: "Authoritarian", governmental_index: 3, cultural_system: "Athiest", cultural_index: 3, image_url: "https://cdn.britannica.com/94/1894-050-9A2F4A3D/Map-of-Russia.jpg", wiki_page: "https://en.wikipedia.org/wiki/Russia")
