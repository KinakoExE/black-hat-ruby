require 'nokogiri'

html = Nokogiri::HTML.parse(open('index.html'))
puts "[+] Title: #{html.title}"

book = html.css('/html/body/ul/span/li').map do |mod|
  mod_name = mod.css('strong').text
  mod_chps = mod.css('/ul/li/div').map(&:text)
  { mod_name => mod_chps }
end

pp book
