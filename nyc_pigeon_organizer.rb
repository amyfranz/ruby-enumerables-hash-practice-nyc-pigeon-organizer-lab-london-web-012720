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
    puts 1
  	data[:color].each_key do |test|
  	  array_color = []
  	  puts data[:color][test].include?(name)
  	  if data[:color][test].include?(name) == true
  	    new_hash[name][:color].unshift(test)
  	    puts "cool"
  	  end
  	end
  end
  puts new_hash
  return new_hash
end