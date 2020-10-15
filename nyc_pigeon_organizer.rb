require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  name_array = []
  color_array = []
  gender_array = []
  lives_array = []
  data_in_array = data.to_a
  data_in_array.each do |general|
    general[1].to_a
    general[1].each do |specific|
      name_array << specific[1]
    end
  end
  name_array = name_array.flatten.uniq
  name_array.each do |count|
    pigeon_list[count] = {:color => [], :gender => [], :lives => [] }
  end

  color_array = data_in_array[0][1].to_a
  gender_array = data_in_array[1][1].to_a
  lives_array = data_in_array[2][1].to_a

  color_array.each do |color|
    if color[0].class == Symbol
      color[0] = color[0].to_s
    end
  end

  gender_array.each do |gender|
    if gender[0].class == Symbol
      gender[0] = gender[0].to_s
    end
 end

pigeon_list.each do |name, value|
   color_array.each do |color|
     if color[1].include? (name)
        pigeon_list[name][:color] << color[0]
      end
    end
    gender_array.each do |gender|
      if gender[1].include? (name)
        pigeon_list[name][:gender] << gender[0]
      end
    end
    lives_array.each do |lives|
      if lives[1].include? (name)
        pigeon_list[name][:lives] << lives[0]
      end
    end
 end

end
#I now have a hash where every unique name is pointing to an empty hash.
#I now have every description within nested arrays

#I need to go through name_array
#Use name array to check for each name in color_array, gender_array, and lives_array
#if found, add the previous index to the hash
#example:

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
