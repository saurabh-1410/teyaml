class teyaml {
file { '/tmp/file1':
  ensure  => file,
  content => 'Hello',
  noop    => false,
}
}
