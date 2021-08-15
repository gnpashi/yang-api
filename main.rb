require 'json'
imgs = Dir["img/*"]
imgs.map{|i| i.slice!("img/")}
puts imgs

hash = {}
imgs.each.with_index do |img, index|
    hash[index] = img
end
puts hash
File.open("index.json","w") do |f|
  f.write(hash.to_json)
end