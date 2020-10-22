require 'pry'

def nyc_pigeon_organizer(data)
  final_hash = {}
  data.each do |key, value|
    value.each do |inner_key, pigeon_name|
      pigeon_name.each do |pigeon_name|
        if !final_hash[pigeon_name]
          final_hash[pigeon_name] = {}
        end
        if !final_hash[pigeon_name][key]
          !final_hash[pigeon_name][key] = []
        end
        final_hash[pigeon_name][key].push(inner_key.to_s)
      end
    end
 end
 final_hash
end
