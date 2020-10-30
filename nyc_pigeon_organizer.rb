require'pry'

def nyc_pigeon_organizer(data)
  new_hash = Hash.new
  
  data.map { |l1_key, l1_value|
    l1_value.map { |l2_key, l2_value|
      l2_value.map { |l3_index|
        if !new_hash[l3_index]
          new_hash[l3_index] = {}
        end
        if !new_hash[l3_index][l1_key]
          new_hash[l3_index][l1_key] = []
        end
        new_hash[l3_index][l1_key].push(l2_key.to_s)
      }
    }
  }
  return new_hash
end