notify { "hello ${Deferred('pid', [])}": }
notify { "hello ${pid()}": }
file { '/tmp/foo':
  ensure  => file,
  content => Deferred('pid', []),
}

