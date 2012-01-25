class packages {}

class packages::standard {
  include "packages::git"
}

class packages::git {

  package { "git":
    ensure => installed
  }

}
