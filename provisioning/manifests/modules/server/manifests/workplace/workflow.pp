class server::workplace::workflow {
  package { 'mc':
    ensure => present,
  }
  package { 'git':
      ensure => present,
  }
  package { 'nano':
      ensure => present,
  }
}