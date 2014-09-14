#
# Automatically generated by blueprint(7).  Edit at your own risk.
#
class digitaloceanubuntulamp {
	Exec {
		path => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games',
	}
	Class['sources'] -> Class['files'] -> Class['packages']
	class files {
		file {
			'/etc':
				ensure => directory;
			'/etc/X11':
				ensure => directory;
			'/etc/X11/Xwrapper.config':
				content => template('digitaloceanubuntulamp/etc/X11/Xwrapper.config'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/apache2':
				ensure => directory;
			'/etc/apache2/conf-enabled':
				ensure => directory;
			'/etc/apache2/conf-enabled/charset.conf':
				ensure => '../conf-available/charset.conf',
				group  => root,
				owner  => root;
			'/etc/apache2/conf-enabled/localized-error-pages.conf':
				ensure => '../conf-available/localized-error-pages.conf',
				group  => root,
				owner  => root;
			'/etc/apache2/conf-enabled/other-vhosts-access-log.conf':
				ensure => '../conf-available/other-vhosts-access-log.conf',
				group  => root,
				owner  => root;
			'/etc/apache2/conf-enabled/security.conf':
				ensure => '../conf-available/security.conf',
				group  => root,
				owner  => root;
			'/etc/apache2/conf-enabled/serve-cgi-bin.conf':
				ensure => '../conf-available/serve-cgi-bin.conf',
				group  => root,
				owner  => root;
			'/etc/apache2/mods-available':
				ensure => directory;
			'/etc/apache2/mods-available/dir.conf':
				content => template('digitaloceanubuntulamp/etc/apache2/mods-available/dir.conf'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/apache2/mods-enabled':
				ensure => directory;
			'/etc/apache2/mods-enabled/access_compat.load':
				ensure => '../mods-available/access_compat.load',
				group  => root,
				owner  => root;
			'/etc/apache2/mods-enabled/auth_basic.load':
				ensure => '../mods-available/auth_basic.load',
				group  => root,
				owner  => root;
			'/etc/apache2/mods-enabled/authn_core.load':
				ensure => '../mods-available/authn_core.load',
				group  => root,
				owner  => root;
			'/etc/apache2/mods-enabled/authn_file.load':
				ensure => '../mods-available/authn_file.load',
				group  => root,
				owner  => root;
			'/etc/apache2/mods-enabled/authz_core.load':
				ensure => '../mods-available/authz_core.load',
				group  => root,
				owner  => root;
			'/etc/apache2/mods-enabled/authz_host.load':
				ensure => '../mods-available/authz_host.load',
				group  => root,
				owner  => root;
			'/etc/apache2/mods-enabled/authz_user.load':
				ensure => '../mods-available/authz_user.load',
				group  => root,
				owner  => root;
			'/etc/apache2/mods-enabled/autoindex.conf':
				ensure => '../mods-available/autoindex.conf',
				group  => root,
				owner  => root;
			'/etc/apache2/mods-enabled/autoindex.load':
				ensure => '../mods-available/autoindex.load',
				group  => root,
				owner  => root;
			'/etc/apache2/mods-enabled/env.load':
				ensure => '../mods-available/env.load',
				group  => root,
				owner  => root;
			'/etc/apache2/mods-enabled/filter.load':
				ensure => '../mods-available/filter.load',
				group  => root,
				owner  => root;
			'/etc/apache2/sites-enabled':
				ensure => directory;
			'/etc/apache2/sites-enabled/000-default.conf':
				ensure => '../sites-available/000-default.conf',
				group  => root,
				owner  => root;
			'/etc/apt':
				ensure => directory;
			'/etc/apt/apt.conf.d':
				ensure => directory;
			'/etc/apt/apt.conf.d/00CDMountPoint':
				content => template('digitaloceanubuntulamp/etc/apt/apt.conf.d/00CDMountPoint'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/apt/apt.conf.d/00aptitude':
				content => template('digitaloceanubuntulamp/etc/apt/apt.conf.d/00aptitude'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/apt/apt.conf.d/01autoremove-kernels':
				content => template('digitaloceanubuntulamp/etc/apt/apt.conf.d/01autoremove-kernels'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/apt/sources.list':
				content => template('digitaloceanubuntulamp/etc/apt/sources.list'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/apt/sources.list.d':
				ensure => directory;
			'/etc/apt/sources.list.d/devstructure.list':
				content => template('digitaloceanubuntulamp/etc/apt/sources.list.d/devstructure.list'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/apt/trusted.gpg.d':
				ensure => directory;
			'/etc/apt/trusted.gpg.d/devstructure.gpg':
				content => template('digitaloceanubuntulamp/etc/apt/trusted.gpg.d/devstructure.gpg'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/blueprintignore':
				content => template('digitaloceanubuntulamp/etc/blueprintignore'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/default':
				ensure => directory;
			'/etc/default/console-setup':
				content => template('digitaloceanubuntulamp/etc/default/console-setup'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/default/grub':
				content => template('digitaloceanubuntulamp/etc/default/grub'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/default/keyboard':
				content => template('digitaloceanubuntulamp/etc/default/keyboard'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/default/ntfs-3g':
				content => template('digitaloceanubuntulamp/etc/default/ntfs-3g'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/hosts':
				content => template('digitaloceanubuntulamp/etc/hosts'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/hosts.allow':
				content => template('digitaloceanubuntulamp/etc/hosts.allow'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/hosts.deny':
				content => template('digitaloceanubuntulamp/etc/hosts.deny'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/ifplugd':
				ensure => directory;
			'/etc/ifplugd/action.d':
				ensure => directory;
			'/etc/ifplugd/action.d/action_wpa':
				ensure => '../../wpa_supplicant/action_wpa.sh',
				group  => root,
				owner  => root;
			'/etc/init.d':
				ensure => directory;
			'/etc/init.d/rc.digitalocean':
				content => template('digitaloceanubuntulamp/etc/init.d/rc.digitalocean'),
				ensure  => file,
				group   => root,
				mode    => 0755,
				owner   => root;
			'/etc/iscsi':
				ensure => directory;
			'/etc/iscsi/iscsid.conf':
				content => template('digitaloceanubuntulamp/etc/iscsi/iscsid.conf'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/motd.tail':
				content => template('digitaloceanubuntulamp/etc/motd.tail'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/mysql':
				ensure => directory;
			'/etc/mysql/debian.cnf':
				content => template('digitaloceanubuntulamp/etc/mysql/debian.cnf'),
				ensure  => file,
				group   => root,
				mode    => 0600,
				owner   => root;
			'/etc/network':
				ensure => directory;
			'/etc/network/if-down.d':
				ensure => directory;
			'/etc/network/if-down.d/wpasupplicant':
				ensure => '../../wpa_supplicant/ifupdown.sh',
				group  => root,
				owner  => root;
			'/etc/network/if-post-down.d':
				ensure => directory;
			'/etc/network/if-post-down.d/wpasupplicant':
				ensure => '../../wpa_supplicant/ifupdown.sh',
				group  => root,
				owner  => root;
			'/etc/network/if-pre-up.d':
				ensure => directory;
			'/etc/network/if-pre-up.d/wpasupplicant':
				ensure => '../../wpa_supplicant/ifupdown.sh',
				group  => root,
				owner  => root;
			'/etc/network/if-up.d':
				ensure => directory;
			'/etc/network/if-up.d/wpasupplicant':
				ensure => '../../wpa_supplicant/ifupdown.sh',
				group  => root,
				owner  => root;
			'/etc/networks':
				content => template('digitaloceanubuntulamp/etc/networks'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/pam.d':
				ensure => directory;
			'/etc/pam.d/common-auth':
				content => template('digitaloceanubuntulamp/etc/pam.d/common-auth'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/pam.d/common-session':
				content => template('digitaloceanubuntulamp/etc/pam.d/common-session'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/pam.d/common-session-noninteractive':
				content => template('digitaloceanubuntulamp/etc/pam.d/common-session-noninteractive'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/php5':
				ensure => directory;
			'/etc/php5/apache2':
				ensure => directory;
			'/etc/php5/apache2/conf.d':
				ensure => directory;
			'/etc/php5/apache2/conf.d/05-opcache.ini':
				ensure => '../../mods-available/opcache.ini',
				group  => root,
				owner  => root;
			'/etc/php5/apache2/conf.d/10-pdo.ini':
				ensure => '../../mods-available/pdo.ini',
				group  => root,
				owner  => root;
			'/etc/php5/apache2/conf.d/20-gd.ini':
				ensure => '../../mods-available/gd.ini',
				group  => root,
				owner  => root;
			'/etc/php5/apache2/conf.d/20-json.ini':
				ensure => '../../mods-available/json.ini',
				group  => root,
				owner  => root;
			'/etc/php5/apache2/conf.d/20-mysql.ini':
				ensure => '../../mods-available/mysql.ini',
				group  => root,
				owner  => root;
			'/etc/php5/apache2/conf.d/20-mysqli.ini':
				ensure => '../../mods-available/mysqli.ini',
				group  => root,
				owner  => root;
			'/etc/php5/apache2/conf.d/20-pdo_mysql.ini':
				ensure => '../../mods-available/pdo_mysql.ini',
				group  => root,
				owner  => root;
			'/etc/php5/apache2/conf.d/20-readline.ini':
				ensure => '../../mods-available/readline.ini',
				group  => root,
				owner  => root;
			'/etc/php5/apache2/php.ini':
				content => template('digitaloceanubuntulamp/etc/php5/apache2/php.ini'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/php5/cli':
				ensure => directory;
			'/etc/php5/cli/conf.d':
				ensure => directory;
			'/etc/php5/cli/conf.d/05-opcache.ini':
				ensure => '../../mods-available/opcache.ini',
				group  => root,
				owner  => root;
			'/etc/php5/cli/conf.d/10-pdo.ini':
				ensure => '../../mods-available/pdo.ini',
				group  => root,
				owner  => root;
			'/etc/php5/cli/conf.d/20-gd.ini':
				ensure => '../../mods-available/gd.ini',
				group  => root,
				owner  => root;
			'/etc/php5/cli/conf.d/20-json.ini':
				ensure => '../../mods-available/json.ini',
				group  => root,
				owner  => root;
			'/etc/php5/cli/conf.d/20-mysql.ini':
				ensure => '../../mods-available/mysql.ini',
				group  => root,
				owner  => root;
			'/etc/php5/cli/conf.d/20-mysqli.ini':
				ensure => '../../mods-available/mysqli.ini',
				group  => root,
				owner  => root;
			'/etc/php5/cli/conf.d/20-pdo_mysql.ini':
				ensure => '../../mods-available/pdo_mysql.ini',
				group  => root,
				owner  => root;
			'/etc/php5/cli/conf.d/20-readline.ini':
				ensure => '../../mods-available/readline.ini',
				group  => root,
				owner  => root;
			'/etc/php5/cli/php.ini':
				content => template('digitaloceanubuntulamp/etc/php5/cli/php.ini'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/php5/mods-available':
				ensure => directory;
			'/etc/php5/mods-available/gd.ini':
				content => template('digitaloceanubuntulamp/etc/php5/mods-available/gd.ini'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/php5/mods-available/mysql.ini':
				content => template('digitaloceanubuntulamp/etc/php5/mods-available/mysql.ini'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/php5/mods-available/mysqli.ini':
				content => template('digitaloceanubuntulamp/etc/php5/mods-available/mysqli.ini'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/php5/mods-available/opcache.ini':
				content => template('digitaloceanubuntulamp/etc/php5/mods-available/opcache.ini'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/php5/mods-available/pdo.ini':
				content => template('digitaloceanubuntulamp/etc/php5/mods-available/pdo.ini'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/php5/mods-available/pdo_mysql.ini':
				content => template('digitaloceanubuntulamp/etc/php5/mods-available/pdo_mysql.ini'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/php5/mods-available/readline.ini':
				content => template('digitaloceanubuntulamp/etc/php5/mods-available/readline.ini'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/python3':
				ensure => directory;
			'/etc/python3/debian_config':
				content => template('digitaloceanubuntulamp/etc/python3/debian_config'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/rc.digitalocean':
				content => template('digitaloceanubuntulamp/etc/rc.digitalocean'),
				ensure  => file,
				group   => root,
				mode    => 0755,
				owner   => root;
			'/etc/rc.local':
				content => template('digitaloceanubuntulamp/etc/rc.local'),
				ensure  => file,
				group   => root,
				mode    => 0755,
				owner   => root;
			'/etc/sgml':
				ensure => directory;
			'/etc/sgml/catalog':
				ensure => '/var/lib/sgml-base/supercatalog',
				group  => root,
				owner  => root;
			'/etc/shells':
				content => template('digitaloceanubuntulamp/etc/shells'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/ssh':
				ensure => directory;
			'/etc/ssh/sshd_config':
				content => template('digitaloceanubuntulamp/etc/ssh/sshd_config'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/ssl':
				ensure => directory;
			'/etc/ssl/private':
				ensure => directory;
			'/etc/ssl/private/ssl-cert-snakeoil.key':
				content => template('digitaloceanubuntulamp/etc/ssl/private/ssl-cert-snakeoil.key'),
				ensure  => file,
				group   => 'ssl-cert',
				mode    => 0640,
				owner   => root;
			'/etc/subgid':
				content => template('digitaloceanubuntulamp/etc/subgid'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/subuid':
				content => template('digitaloceanubuntulamp/etc/subuid'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
			'/etc/systemd':
				ensure => directory;
			'/etc/systemd/system':
				ensure => directory;
			'/etc/systemd/system/multi-user.target.wants':
				ensure => directory;
			'/etc/systemd/system/multi-user.target.wants/atd.service':
				ensure => '/lib/systemd/system/atd.service',
				group  => root,
				owner  => root;
			'/etc/systemd/system/multi-user.target.wants/rsyslog.service':
				ensure => '/lib/systemd/system/rsyslog.service',
				group  => root,
				owner  => root;
			'/etc/systemd/system/multi-user.target.wants/ssh.service':
				ensure => '/lib/systemd/system/ssh.service',
				group  => root,
				owner  => root;
			'/etc/systemd/system/sockets.target.wants':
				ensure => directory;
			'/etc/systemd/system/sockets.target.wants/acpid.socket':
				ensure => '/lib/systemd/system/acpid.socket',
				group  => root,
				owner  => root;
			'/etc/systemd/system/syslog.service':
				ensure => '/lib/systemd/system/rsyslog.service',
				group  => root,
				owner  => root;
			'/etc/update-motd.d':
				ensure => directory;
			'/etc/update-motd.d/99-footer':
				content => template('digitaloceanubuntulamp/etc/update-motd.d/99-footer'),
				ensure  => file,
				group   => root,
				mode    => 0755,
				owner   => root;
			'/etc/update-notifier':
				ensure => directory;
			'/etc/update-notifier/hooks_seen':
				content => template('digitaloceanubuntulamp/etc/update-notifier/hooks_seen'),
				ensure  => file,
				group   => root,
				mode    => 0644,
				owner   => root;
		}
	}
	include files
	class packages {
		exec { 'apt-get -q update':
			before => Class['apt'],
		}
		class apt {
			package {
				'arping':
					ensure => '2.11-1';
				'biosdevname':
					ensure => '0.4.1-0ubuntu6.1';
				'byobu':
					ensure => '5.77-0ubuntu1';
				'curl':
					ensure => '7.35.0-1ubuntu2';
				'e2fslibs:amd64':
					ensure => '1.42.9-3ubuntu1';
				'ethtool':
					ensure => '1:3.13-1';
				'fontconfig-config':
					ensure => '2.11.0-0ubuntu4.1';
				'fonts-dejavu-core':
					ensure => '2.34-1ubuntu1';
				'fonts-ubuntu-font-family-console':
					ensure => '0.80-0ubuntu6';
				'gawk':
					ensure => '1:4.0.1+dfsg-2.1ubuntu2';
				'gcc-4.8-base:amd64':
					ensure => '4.8.2-19ubuntu1';
				'gcc-4.9-base:amd64':
					ensure => '4.9-20140406-0ubuntu1';
				'git':
					ensure => '1:1.9.1-1';
				'git-core':
					ensure => '1:1.9.1-1';
				'git-man':
					ensure => '1:1.9.1-1';
				'libaccountsservice0:amd64':
					ensure => '0.6.35-0ubuntu7.1';
				'libacl1:amd64':
					ensure => '2.2.52-1';
				'libaio1:amd64':
					ensure => '0.3.109-4';
				'libapache2-mod-auth-mysql':
					ensure => '4.3.9-13.1ubuntu3';
				'libapparmor1:amd64':
					ensure => '2.8.95~2430-0ubuntu5';
				'libapr1:amd64':
					ensure => '1.5.0-1';
				'libaprutil1-dbd-sqlite3:amd64':
					ensure => '1.5.3-1';
				'libaprutil1-ldap:amd64':
					ensure => '1.5.3-1';
				'libaprutil1:amd64':
					ensure => '1.5.3-1';
				'libapt-inst1.5:amd64':
					ensure => '1.0.1ubuntu2.1';
				'libapt-pkg4.12:amd64':
					ensure => '1.0.1ubuntu2.1';
				'libasn1-8-heimdal:amd64':
					ensure => '1.6~git20131207+dfsg-1ubuntu1';
				'libasprintf0c2:amd64':
					ensure => '0.18.3.1-1ubuntu3';
				'libattr1:amd64':
					ensure => '1:2.4.47-1ubuntu1';
				'libaudit1:amd64':
					ensure => '1:2.3.2-2ubuntu1';
				'libblkid1:amd64':
					ensure => '2.20.1-5.1ubuntu20.1';
				'libboost-iostreams1.54.0:amd64':
					ensure => '1.54.0-4ubuntu3.1';
				'libbsd0:amd64':
					ensure => '0.6.0-2ubuntu1';
				'libbz2-1.0:amd64':
					ensure => '1.0.6-5';
				'libc-ares2:amd64':
					ensure => '1.10.0-2';
				'libc6:amd64':
					ensure => '2.19-0ubuntu6.1';
				'libcap2:amd64':
					ensure => '1:2.24-0ubuntu2';
				'libcgmanager0:amd64':
					ensure => '0.24-0ubuntu7';
				'libck-connector0:amd64':
					ensure => '0.4.5-3.1ubuntu2';
				'libcloog-isl4:amd64':
					ensure => '0.18.2-1';
				'libcomerr2:amd64':
					ensure => '1.42.9-3ubuntu1';
				'libcurl3-gnutls:amd64':
					ensure => '7.35.0-1ubuntu2';
				'libcurl3:amd64':
					ensure => '7.35.0-1ubuntu2';
				'libdb5.3:amd64':
					ensure => '5.3.28-3ubuntu3';
				'libdbus-1-3:amd64':
					ensure => '1.6.18-0ubuntu4.1';
				'libdbus-glib-1-2:amd64':
					ensure => '0.100.2-1';
				'libdebconfclient0:amd64':
					ensure => '0.187ubuntu1';
				'libdevmapper1.02.1:amd64':
					ensure => '2:1.02.77-6ubuntu2';
				'libdrm2:amd64':
					ensure => '2.4.52-1';
				'libedit2:amd64':
					ensure => '3.1-20130712-2';
				'libelf1:amd64':
					ensure => '0.158-0ubuntu5.1';
				'libept1.4.12:amd64':
					ensure => '1.0.12';
				'liberror-perl':
					ensure => '0.17-1.1';
				'libevent-2.0-5:amd64':
					ensure => '2.0.21-stable-1ubuntu1';
				'libexpat1:amd64':
					ensure => '2.1.0-4ubuntu1';
				'libffi6:amd64':
					ensure => '3.1~rc1+r3.0.13-12';
				'libfontconfig1:amd64':
					ensure => '2.11.0-0ubuntu4.1';
				'libfreetype6:amd64':
					ensure => '2.5.2-1ubuntu2.2';
				'libfribidi0:amd64':
					ensure => '0.19.6-1';
				'libfuse2:amd64':
					ensure => '2.9.2-4ubuntu4';
				'libgc1c2:amd64':
					ensure => '1:7.2d-5ubuntu2';
				'libgcc1:amd64':
					ensure => '1:4.9-20140406-0ubuntu1';
				'libgck-1-0:amd64':
					ensure => '3.10.1-1';
				'libgcr-base-3-1:amd64':
					ensure => '3.10.1-1';
				'libgcrypt11:amd64':
					ensure => '1.5.3-2ubuntu4';
				'libgd3:amd64':
					ensure => '2.1.0-3';
				'libgdbm3:amd64':
					ensure => '1.8.3-12build1';
				'libgeoip1:amd64':
					ensure => '1.6.0-1';
				'libglib2.0-0:amd64':
					ensure => '2.40.0-2';
				'libgmp10:amd64':
					ensure => '2:5.1.3+dfsg-1ubuntu1';
				'libgnutls-openssl27:amd64':
					ensure => '2.12.23-12ubuntu2.1';
				'libgnutls26:amd64':
					ensure => '2.12.23-12ubuntu2.1';
				'libgpg-error0:amd64':
					ensure => '1.12-0.2ubuntu1';
				'libgpm2:amd64':
					ensure => '1.20.4-6.1';
				'libgssapi-krb5-2:amd64':
					ensure => '1.12+dfsg-2ubuntu4';
				'libgssapi3-heimdal:amd64':
					ensure => '1.6~git20131207+dfsg-1ubuntu1';
				'libhcrypto4-heimdal:amd64':
					ensure => '1.6~git20131207+dfsg-1ubuntu1';
				'libheimbase1-heimdal:amd64':
					ensure => '1.6~git20131207+dfsg-1ubuntu1';
				'libheimntlm0-heimdal:amd64':
					ensure => '1.6~git20131207+dfsg-1ubuntu1';
				'libhx509-5-heimdal:amd64':
					ensure => '1.6~git20131207+dfsg-1ubuntu1';
				'libidn11:amd64':
					ensure => '1.28-1ubuntu2';
				'libisl10:amd64':
					ensure => '0.12.2-1';
				'libiw30:amd64':
					ensure => '30~pre9-8ubuntu1';
				'libjbig0:amd64':
					ensure => '2.0-2ubuntu4.1';
				'libjpeg-turbo8:amd64':
					ensure => '1.3.0-0ubuntu2';
				'libjpeg8:amd64':
					ensure => '8c-2ubuntu8';
				'libjson-c2:amd64':
					ensure => '0.11-3ubuntu1.2';
				'libjson0:amd64':
					ensure => '0.11-3ubuntu1.2';
				'libk5crypto3:amd64':
					ensure => '1.12+dfsg-2ubuntu4';
				'libkeyutils1:amd64':
					ensure => '1.5.6-1';
				'libkmod2:amd64':
					ensure => '15-0ubuntu6';
				'libkrb5-26-heimdal:amd64':
					ensure => '1.6~git20131207+dfsg-1ubuntu1';
				'libkrb5-3:amd64':
					ensure => '1.12+dfsg-2ubuntu4';
				'libkrb5support0:amd64':
					ensure => '1.12+dfsg-2ubuntu4';
				'libldap-2.4-2:amd64':
					ensure => '2.4.31-1+nmu2ubuntu8';
				'liblockfile1:amd64':
					ensure => '1.09-6ubuntu1';
				'liblua5.2-0:amd64':
					ensure => '5.2.3-1';
				'liblzma5:amd64':
					ensure => '5.1.1alpha+20120614-2ubuntu2';
				'libmagic1:amd64':
					ensure => '1:5.14-2ubuntu3.1';
				'libmcrypt4':
					ensure => '2.5.8-3.1ubuntu1';
				'libmount1:amd64':
					ensure => '2.20.1-5.1ubuntu20.1';
				'libmpc3:amd64':
					ensure => '1.0.1-1ubuntu1';
				'libmpdec2:amd64':
					ensure => '2.4.0-6';
				'libmpfr4:amd64':
					ensure => '3.1.2-1';
				'libmysqlclient18:amd64':
					ensure => '5.5.38-0ubuntu0.14.04.1';
				'libncurses5:amd64':
					ensure => '5.9+20140118-1ubuntu1';
				'libncursesw5:amd64':
					ensure => '5.9+20140118-1ubuntu1';
				'libnet1:amd64':
					ensure => '1.1.6+dfsg-2ubuntu1';
				'libnewt0.52:amd64':
					ensure => '0.52.15-2ubuntu5';
				'libnfnetlink0:amd64':
					ensure => '1.0.1-2';
				'libnih-dbus1:amd64':
					ensure => '1.0.3-4ubuntu25';
				'libnih1:amd64':
					ensure => '1.0.3-4ubuntu25';
				'libnl-3-200:amd64':
					ensure => '3.2.21-1';
				'libnl-genl-3-200:amd64':
					ensure => '3.2.21-1';
				'libnuma1:amd64':
					ensure => '2.0.9~rc5-1ubuntu2';
				'libp11-kit0:amd64':
					ensure => '0.20.2-2ubuntu2';
				'libpam-cap:amd64':
					ensure => '1:2.24-0ubuntu2';
				'libpam-modules:amd64':
					ensure => '1.1.8-1ubuntu2';
				'libpam-systemd:amd64':
					ensure => '204-5ubuntu20.3';
				'libpam0g:amd64':
					ensure => '1.1.8-1ubuntu2';
				'libparted0debian1:amd64':
					ensure => '2.3-19ubuntu1';
				'libpcap0.8:amd64':
					ensure => '1.5.3-2';
				'libpci3:amd64':
					ensure => '1:3.2.1-1ubuntu5';
				'libpcre3:amd64':
					ensure => '1:8.31-2ubuntu2';
				'libpcsclite1:amd64':
					ensure => '1.8.10-1ubuntu1';
				'libpipeline1:amd64':
					ensure => '1.3.0-1';
				'libplymouth2:amd64':
					ensure => '0.8.8-0ubuntu17';
				'libpng12-0:amd64':
					ensure => '1.2.50-1ubuntu2';
				'libpolkit-agent-1-0:amd64':
					ensure => '0.105-4ubuntu2';
				'libpolkit-backend-1-0:amd64':
					ensure => '0.105-4ubuntu2';
				'libpolkit-gobject-1-0:amd64':
					ensure => '0.105-4ubuntu2';
				'libpopt0:amd64':
					ensure => '1.16-8ubuntu1';
				'libprocps3:amd64':
					ensure => '1:3.3.9-1ubuntu2';
				'libpython-stdlib:amd64':
					ensure => '2.7.5-5ubuntu3';
				'libpython2.7-minimal:amd64':
					ensure => '2.7.6-8';
				'libpython2.7-stdlib:amd64':
					ensure => '2.7.6-8';
				'libpython2.7:amd64':
					ensure => '2.7.6-8';
				'libpython3-stdlib:amd64':
					ensure => '3.4.0-0ubuntu2';
				'libpython3.4-minimal:amd64':
					ensure => '3.4.0-2ubuntu1';
				'libpython3.4-stdlib:amd64':
					ensure => '3.4.0-2ubuntu1';
				'libreadline5:amd64':
					ensure => '5.2+dfsg-2';
				'libreadline6:amd64':
					ensure => '6.3-4ubuntu2';
				'libroken18-heimdal:amd64':
					ensure => '1.6~git20131207+dfsg-1ubuntu1';
				'librtmp0:amd64':
					ensure => '2.4+20121230.gitdf6c518-1';
				'libsasl2-2:amd64':
					ensure => '2.1.25.dfsg1-17build1';
				'libsasl2-modules-db:amd64':
					ensure => '2.1.25.dfsg1-17build1';
				'libsasl2-modules:amd64':
					ensure => '2.1.25.dfsg1-17build1';
				'libselinux1:amd64':
					ensure => '2.2.2-1ubuntu0.1';
				'libsemanage1:amd64':
					ensure => '2.2-1';
				'libsepol1:amd64':
					ensure => '2.2-1';
				'libsigc++-2.0-0c2a:amd64':
					ensure => '2.2.10-0.2ubuntu2';
				'libsigsegv2:amd64':
					ensure => '2.10-2';
				'libslang2:amd64':
					ensure => '2.2.4-15ubuntu1';
				'libsmi2ldbl:amd64':
					ensure => '0.4.8+dfsg2-8ubuntu2';
				'libsqlite3-0:amd64':
					ensure => '3.8.2-1ubuntu2';
				'libss2:amd64':
					ensure => '1.42.9-3ubuntu1';
				'libssl1.0.0:amd64':
					ensure => '1.0.1f-1ubuntu2.4';
				'libstdc++6:amd64':
					ensure => '4.8.2-19ubuntu1';
				'libsystemd-daemon0:amd64':
					ensure => '204-5ubuntu20.3';
				'libsystemd-login0:amd64':
					ensure => '204-5ubuntu20.3';
				'libtasn1-6:amd64':
					ensure => '3.4-3ubuntu0.1';
				'libtiff5:amd64':
					ensure => '4.0.3-7ubuntu0.1';
				'libtinfo5:amd64':
					ensure => '5.9+20140118-1ubuntu1';
				'libudev1:amd64':
					ensure => '204-5ubuntu20.3';
				'libusb-0.1-4:amd64':
					ensure => '2:0.1.12-23.3ubuntu1';
				'libusb-1.0-0:amd64':
					ensure => '2:1.0.17-1ubuntu2';
				'libustr-1.0-1:amd64':
					ensure => '1.0.4-3ubuntu2';
				'libuuid1:amd64':
					ensure => '2.20.1-5.1ubuntu20.1';
				'libvpx1:amd64':
					ensure => '1.3.0-2';
				'libwind0-heimdal:amd64':
					ensure => '1.6~git20131207+dfsg-1ubuntu1';
				'libwireshark3:amd64':
					ensure => '1.10.6-1';
				'libwiretap3:amd64':
					ensure => '1.10.6-1';
				'libwrap0:amd64':
					ensure => '7.6.q-25';
				'libwsutil3:amd64':
					ensure => '1.10.6-1';
				'libx11-6:amd64':
					ensure => '2:1.6.2-1ubuntu2';
				'libxau6:amd64':
					ensure => '1:1.0.8-1';
				'libxcb1:amd64':
					ensure => '1.10-2ubuntu1';
				'libxdmcp6:amd64':
					ensure => '1:1.1.1-1';
				'libxext6:amd64':
					ensure => '2:1.3.2-1';
				'libxml2:amd64':
					ensure => '2.9.1+dfsg1-3ubuntu4.3';
				'libxmuu1:amd64':
					ensure => '2:1.1.1-1';
				'libxpm4:amd64':
					ensure => '1:3.5.10-1';
				'linux-headers-3.13.0-24':
					ensure => '3.13.0-24.47';
				'linux-headers-3.13.0-24-generic':
					ensure => '3.13.0-24.47';
				'linux-image-3.13.0-24-generic':
					ensure => '3.13.0-24.47';
				'linux-image-extra-3.13.0-24-generic':
					ensure => '3.13.0-24.47';
				'memtest86+':
					ensure => '4.20-1.1ubuntu8';
				'mysql-server':
					ensure => '5.5.38-0ubuntu0.14.04.1';
				'openssh-server':
					ensure => '1:6.6p1-2ubuntu2';
				'openssh-sftp-server':
					ensure => '1:6.6p1-2ubuntu2';
				'php5':
					ensure => '5.5.9+dfsg-1ubuntu4.3';
				'php5-gd':
					ensure => '5.5.9+dfsg-1ubuntu4.3';
				'php5-mcrypt':
					ensure => '5.4.6-0ubuntu5';
				'php5-mysql':
					ensure => '5.5.9+dfsg-1ubuntu4.3';
				'python3-gdbm:amd64':
					ensure => '3.4.0-0ubuntu1';
				'python3-newt':
					ensure => '0.52.15-2ubuntu5';
				'python3-pycurl':
					ensure => '7.19.3-0ubuntu3';
				'python3-software-properties':
					ensure => '0.92.37.1';
				'run-one':
					ensure => '1.17-0ubuntu1';
				'screen':
					ensure => '4.1.0~20120320gitdb59704-9';
				'software-properties-common':
					ensure => '0.92.37.1';
				'tmux':
					ensure => '1.8-5';
				'unattended-upgrades':
					ensure => '0.82.1ubuntu2';
				'wireless-tools':
					ensure => '30~pre9-8ubuntu1';
				'wpasupplicant':
					ensure => '2.1-0ubuntu1';
				'zlib1g:amd64':
					ensure => '1:1.2.8.dfsg-1ubuntu1';
			}
		}
		include apt
	}
	include packages
	class services {
		class sysvinit {
			service { 'ssh':
				enable    => true,
				ensure    => running,
				subscribe => [File['/etc/default/keyboard'], File['/etc/default/ntfs-3g'], File['/etc/network/if-up.d/wpasupplicant'], File['/etc/pam.d/common-session-noninteractive'], File['/etc/default/console-setup'], File['/etc/pam.d/common-auth'], File['/etc/pam.d/common-session'], File['/etc/default/grub'], Package['openssh-server'], Exec['99628065e99358ccf4e37e3c463d42ef47604b07.tar']],
			}
		}
		include sysvinit
		class upstart {
			service { 'ssh':
				enable    => true,
				ensure    => running,
				provider  => upstart,
				subscribe => [File['/etc/default/keyboard'], File['/etc/default/ntfs-3g'], File['/etc/network/if-up.d/wpasupplicant'], File['/etc/pam.d/common-session-noninteractive'], File['/etc/default/console-setup'], File['/etc/pam.d/common-auth'], File['/etc/pam.d/common-session'], File['/etc/default/grub'], Package['openssh-server'], Exec['99628065e99358ccf4e37e3c463d42ef47604b07.tar']],
			}
		}
		include upstart
	}
	include services
	class sources {
		exec { 'tar xf /tmp/99628065e99358ccf4e37e3c463d42ef47604b07.tar':
			alias => '/usr/local',
			cwd   => '/usr/local',
		}
		file { '/tmp/99628065e99358ccf4e37e3c463d42ef47604b07.tar':
			before => Exec['/usr/local'],
			group  => root,
			mode   => 0644,
			owner  => root,
			source => 'puppet:///modules/digitaloceanubuntulamp/tmp/99628065e99358ccf4e37e3c463d42ef47604b07.tar',
		}
	}
	include sources
}
