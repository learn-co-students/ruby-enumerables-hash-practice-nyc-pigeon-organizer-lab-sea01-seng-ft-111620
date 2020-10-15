def nyc_pigeon_organizer(pigeon_data)
  myHash = {}
  
  pigeon_data[:gender].each_value do |arrNames|
    arrNames.each do |name|
      myHash[name] = {
      :color => pigeon_data[:color].keys.map { |key| key.to_s if pigeon_data[:color][key].include?(name)}.compact,
      :gender => pigeon_data[:gender].keys.map { |key| key.to_s if pigeon_data[:gender][key].include?(name)}.compact,
      :lives => pigeon_data[:lives].keys.map { |key| key.to_s if pigeon_data[:lives][key].include?(name)}.compact
      }
    end
  end
  myHash
end
