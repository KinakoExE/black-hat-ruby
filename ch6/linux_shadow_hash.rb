require 'digest'
password = ARGV[0]

if password.nil? || password.empty?
  puts "Usage: ruby hash_test.rb password"
  exit!
end

# generate Linux Password Hashes
salt = rand(36**8).to_s(36) # base is 36
shadow_hash = '$6$' + Digest::SHA2.hexdigest(password + salt)
puts shadow_hash
