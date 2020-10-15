require 'pry'
def nyc_pigeon_organizer(data)
  new_hash = {}
  # write your code here!

  #Retrieves all unique names from the data set
  data_in_array = data.to_a
  name_array = []
  data_in_array.each do |general|
    general[1].to_a
    general[1].each do |specific|
      name_array << specific[1]
    end
    name_array = name_array.flatten.uniq
  end


=begin
bird_hash = {}
name_array.each do |counter|
bird_hash[name][counter] = color[]
bird_hash[name][counter] = gender[]
bird_hash[name][counter] = lives[]

My task is to go through this hash of hashes of arrays
return the unique names
create a new hash

this new hash should be a hash of hashes of arrays
new_hash = {
"Bird1" => {:color => []. :gender => [], :lives => []}
"Bird2" => {:color => []. :gender => [], :lives => []}
"Bird3" => {:color => []. :gender => [], :lives => []}
"Bird4" => {:color => []. :gender => [], :lives => []}
}

PROGRAM TO COLLECT ALL names
data_in_array = data.to_a
name_array = []
data_in_array.each do |general|
  general[1].to_a
  general[1].each do |specific|
    name_array << specific[1]
  end
  name_array = name_array.flatten.uniq
end


BIRD CLASS(name_array, name)

Color:
pigeons_data[color].select

if pigeon_data {:color => {:purple => [name_array[name]]}}
pigeon_data{:color{:purple} = "purple"
color_array << "purple"
color_array << "grey"
etc



=end
