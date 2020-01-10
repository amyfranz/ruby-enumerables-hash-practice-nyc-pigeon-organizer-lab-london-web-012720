def nyc_pigeon_organizer(data)
  new_hash = {}
  data[:gender][:female].map do |name|
    new_hash[name] = {:color => [], :gender =>[], :lives => []}
  end
  data[:gender][:male].map do |name|
    new_hash[name] = {:color => [], :gender =>[], :lives => []}
  end
  puts new_hash
  new_hash.each_key do |name|
    data.each_key do |key1|
  	data[key1].each_key do |key2|
  	  array_color = []
  	  puts data[key1][key2].include?(name)
  	  if data[key1][key2].include?(name) == true
  	    new_hash[name][key1].unshift(key2[0, key2.size])
  	    puts "cool"
  	  end
  	end
  	end
  end
  puts new_hash
  return new_hash
end