class teyaml {
# resources
$deferred_file = Deferred('deferred_file', [ '/etc/hostname' ])
$deferred_content = Deferred('inline_epp', ['Result: <%= $var %>', { 'var' => $deferred_file }])

notify { 'test message':
message => $deferred_content
}

file { '/root/result.txt':
ensure => file,
content => $deferred_content
}
}
