class webapp {

  vcsrepo { "/var/www/webapp":
    ensure   => latest,
    provider => git,
    source   => "git://github.com/cwebberOps/infracode-webstuffs.git",
    require  => [
      Package['git'],
      Package['apache2']
    ]
  }

}
