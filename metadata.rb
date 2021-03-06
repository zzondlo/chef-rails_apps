maintainer       "bradmontgomery"
maintainer_email "bmontgomery@coroutine.com"
license          "Apache 2.0"
description      "Configures Rails Apps with Apache/Passenger/RVM"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.3"

recipe           "rails_apps::default", "Installs Apache, RVM, and Passenger"
recipe           "rails_apps::setup", "Creates directory structure for Rails apps"
recipe           "rails_apps::apache_config", "Configures Apache, Passenger"

depends "apache2"
depends "rvm"
depends "rvm_passenger"

%w{ ubuntu debian }.each do |os|
  supports os
end
