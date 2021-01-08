require 'find'

def find_suid(path)
  files = []
  Find.find(path) do |f|
    if (File.file?(f) && File.stat(f).setuid? && File.executable?(f))
      files << f
    end
  rescue
    next
  end

  if files.empty?
    return 'Nothing was found.'
  else
    files
  end
end

pp find_suid(ARGV[0])
