# An executable ruby script generator
#!/usr/bin/env ruby -w

# Take one argument
path = ARGV[0]

# Fail if argumenent not supplied, give reason
fail "specify filename to create" unless path

# Create file with shebang
File.open(path, "w") { |f| f.puts "#!/usr/bin/env ruby -w" }
# Modify to executable
File.chmod(0755, path)

system("vim", path)

