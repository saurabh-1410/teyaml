notify { "hello ${Deferred('pid', [])}": }
notify { "hello ${pid()}": }
notify { "test1": }
file { '/tmp/foo':
  ensure  => file,
  content => Deferred('pid', []),
}

