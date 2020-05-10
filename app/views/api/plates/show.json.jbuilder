json.array! @plates.each do |plate|
  json.id plate.id
  json.plate_name plate.plate_name
  json.scientific_name plate.scientific_name
  json.plate_number plate.plate_number
  json.medium plate.medium
  json.price plate.price
  json.number_of_prints plate.number_of_prints
  json.description plate.description
  json.image_url plate.image_url
end