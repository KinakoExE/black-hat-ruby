require 'json'

json = JSON.parse(open('index.json').read)
puts "[+] Title: #{json.dig('book', 'title')}"

book = json.dig('book', 'toc', 'orderedlist').map do |mod|
  mod_id_val = mod.dig('module', 'id')
  mod_name_val = mod.dig('module', 'name')
  mod_name = "Module #{mod_id_val} | #{mod_name_val}"
  mod_chps = mod.dig('module', 'chapters').map do |ch|
    "Chapter #{ch['id']} - #{ch['name']}"
  end
  {mod_name => mod_chps}
end

pp book
