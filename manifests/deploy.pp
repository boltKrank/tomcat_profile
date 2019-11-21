# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include tomcat_profile::deploy
class tomcat_profile::deploy {

	include java

	tomcat::install { '/opt/tomcat':
  		source_url => 'http://apache.mirror.digitalpacific.com.au/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz',
	}

	tomcat::instance { 'default':
		catalina_home => '/opt/tomcat',
	}

}
