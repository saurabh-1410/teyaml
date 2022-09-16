require 'pathname'

Puppet::Functions.create_function(:deferred_file) do
dispatch :deferred_file do
required_param 'String', :filename
end

def deferred_file(filename)
pn = Pathname.new(filename)
if pn.exist?
Puppet::FileSystem.read_preserve_line_endings(filename)
else
raise "Could not find #{filename}"
end
end
end