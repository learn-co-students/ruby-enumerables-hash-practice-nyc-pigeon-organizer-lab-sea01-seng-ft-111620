require 'pry'

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, value), names_array|
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
end
