require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, value|
    value.each do |inner_key, names|
      names.each do |name|
        if !names_array[name]
          names_array[name] = {}
        end
        if !names_array[name][key]
          names_array[name][key] = []
        end  
        names_array[name][key].push(inner_key.to_s)
      end  
    end  
  end 
  pigeon_list
end
