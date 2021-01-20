require 'openssl'

data = 'BlackHatRuby Secret Mission: Go Hack The World!'

# <name>-<key length>-<mode>
cipher = OpenSSL::Cipher.new('AES-128-CBC')
cipher.encrypt
key = cipher.random_key
iv = cipher.random_iv
encrypted = cipher.update(data) + cipher.final
puts "encrypted: #{encrypted}"

decipher = OpenSSL::Cipher.new('AES-128-CBC')
decipher.decrypt
decipher.key = key
decipher.iv = iv
plain = decipher.update(encrypted) + decipher.final
puts "plain: #{plain}"
