Puppet::Functions.create_function(:pid) do
  def pid
    Process.pid.to_s
  end
end
