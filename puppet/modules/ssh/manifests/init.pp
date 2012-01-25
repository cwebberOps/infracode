class ssh {

  package { "openssh-server":
    ensure => installed
  }
  
  file { "/etc/ssh/sshd_config":
    source  => "puppet:///modules/ssh/sshd_config",
    owner   => "root",
    group   => "root",
    mode    => 0640,
    require => Package['openssh-server']
  }

  service { 'ssh':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    subscribe  => File['/etc/ssh/sshd_config']
  }

}
