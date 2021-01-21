require 'winrm'

cmd = ARGV[0]

opts = {
  endpoint: 'http://1192.168.100.100:5985/wasman',
  transport: :negotiate,
  user: 'administrator',
  password: 'Asd@123'
}

conn = WinRM::Connection.new(opts)
conn.shell(:powershell) do |shell|
  output = shell.run(cmd) do |stdout, stderr|
    puts stdout
    puts stderr
  end
  puts "The script exited with exit coede #{output.exitcode}"
end
