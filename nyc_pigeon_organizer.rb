def nyc_pigeon_organizer(data)
  new_hash = {}
  data[:gender][:female].map do |name|
    new_hash[name] = {:color => [], :gender =>["female"], :lives => []}
  end
  data[:gender][:male].map do |name|
    new_hash[name] = {:color => [], :gender =>["male"], :lives => []}
  end
  puts new_hash
  new_hash.each_key do |name|
    data.each_key do |key1|
  	data[key1].each_key do |test|
  	  array_color = []
  	  puts data[key1][test].include?(name)
  	  if data[key1][test].include?(name) == true
  	    new_hash[name][key1].unshift(test[0, test.size])
  	    puts "cool"
  	  end
  	end
  	end
  end
  puts new_hash
  return new_hash
end