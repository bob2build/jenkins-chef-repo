name             'jenkins_wrapper'
maintainer       'Bob'
maintainer_email 'bob2build.2020@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures nexus_wrapper'
long_description 'Installs/Configures nexus_wrapper'
version          '0.1.0'

supports 'centos'

depends 'jenkins', '~> 2.5.0'
depends 'git', '~> 4.4.1'
depends 'java', '~> 1.39.0'
