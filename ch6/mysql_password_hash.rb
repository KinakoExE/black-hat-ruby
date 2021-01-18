require 'digest'
password = ARGV[0]

if password.nil? || password.empty?
  puts "Usage: ruby hash_test.rb password"
  exit!
end

# generate MySQL password Hash
hash = '*' + Digest::SHA1.hexdigest(Digest::SHA1.digest(password)).upcase
puts hash

# $ ruby mysql_password_hash.rb admin
# *4ACFE3202A5FF5CF467898FC58AAB1D615029441

# mysql> select password('admin');
# +-------------------------------------------+
# | password('admin')                         |
#   +-------------------------------------------+
# | *4ACFE3202A5FF5CF467898FC58AAB1D615029441 |
#   +-------------------------------------------+
