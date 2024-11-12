# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

System.create(Country_Name: "USA", Economic_System: "FreeMarketCapitalism", Economic_Index: 1, Governmental_System: "RepresentitiveRepublic", Governmental_Index: 1, Cultural_System: "ClassicalLiberalism", Cultural_Index: 1, Image_Url: "https://erepublic.brightspotcdn.com/dims4/default/e4644b2/2147483647/strip/true/crop/1000x521+0+73/resize/840x438!/quality/90/?url=http%3A%2F%2Ferepublic-brightspot.s3.us-west-2.amazonaws.com%2F44%2F65%2F34d730834cf59eb7b19871a77cf0%2Fshutterstock-223572436.jpg", Wiki_page: "https://en.wikipedia.org/wiki/United_States")
System.create(Country_Name: "Canada", Economic_System: "Socialism", Economic_Index: 2, Governmental_System: "ParliamentaryDemocracy", Governmental_Index: 2, Cultural_System: "ModernLiberalism", Cultural_Index: 2, Image_Url: "https://c8.alamy.com/comp/EPCCCG/canada-political-map-with-capital-ottawa-national-borders-important-EPCCCG.jpg", Wiki_page: "https://en.wikipedia.org/wiki/Canada")
System.create(Country_Name: "N.Korea", Economic_System: "Communism", Economic_Index: 3, Governmental_System: "AuthoritarianCommunism", Governmental_Index: 3, Cultural_System: "Athiest", Cultural_Index: 3, Image_Url: "https://www.38north.org/wp-content/uploads/2023/03/Fig2-Nightlights-23-0403-scaled.jpg", Wiki_page: "https://en.wikipedia.org/wiki/North_Korea")
System.create(Country_Name: "Sweden", Economic_System: "Socialism", Economic_Index: 2, Governmental_System: "ParliamentaryDemocracy", Governmental_Index: 2, Cultural_System: "ModernLiberalism", Cultural_Index: 2, Image_Url: "https://cdn.britannica.com/96/69896-004-9E9272BD/Map-of-Sweden.jpg", Wiki_page: "https://en.wikipedia.org/wiki/Sweden")
System.create(Country_Name: "Japan", Economic_System: "FreeMarketCapitalism", Economic_Index: 1, Governmental_System: "RepresentitiveRepublic", Governmental_Index: 1, Cultural_System: "Athiest", Cultural_Index: 3, Image_Url: "https://cdn.britannica.com/95/1795-050-9EFCC4F0/Japan-map-features-locator.jpg", Wiki_page: "https://en.wikipedia.org/wiki/Japan")
