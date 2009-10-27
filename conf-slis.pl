
$REPOS = {
    '4.1' => {
	base_uri => 'http://ftp.slis.fr/slis/dists/4.1/main',
	source => 'yes',
	archs => [ 'i386' ],
	src_checks => [
	],
	bin_checks => [
	    [ "has_source_in", "4.1" ],
	],
    },
#    '4.1-udeb' => {
#	base_uri => 'http://ftp.slis.fr/slis/dists/4.1/main/debian-installer',
#	source => '',
#	archs => [ 'i386' ],
#	src_checks => [
#	],
#	bin_checks => [
#	    [ "has_source_in", "4.1" ],
#	],
#    },
    '4.1-proposed-updates' => {
	base_uri => 'http://ftp.slis.fr/slis/dists/4.1-proposed-updates/main',
	source => 'yes',
	archs => [ 'i386' ],
	src_checks => [
	    [ "version_error", "<<", "4.1", "SMALLER_VERSION_THAN_IN_4.1" ],
	    [ "version_warn", "=", "4.1", "SAME_VERSION_THAN_IN_4.1" ],
	],
	bin_checks => [
	    [ "must_be_in", "4.1" ],
	    [ "version_error", "<<", "4.1", "SMALLER_VERSION_THAN_IN_4.1" ],
	    [ "version_warn", "=", "4.1", "SAME_VERSION_THAN_IN_4.1" ],
	    [ "has_source_in", "4.1-proposed-updates" ],
	],
    },
    '4.1-experimental' => {
	base_uri => 'http://ftp.slis.fr/slis/dists/4.1-experimental/main',
	source => 'yes',
	archs => [ 'i386' ],
	src_checks => [
	    [ "version_error", "<<", "4.1", "SMALLER_VERSION_THAN_IN_4.1" ],
	    [ "version_warn", "=", "4.1", "SAME_VERSION_THAN_IN_4.1" ],
	    [ "version_error", "<<", "4.1-proposed-updates", "SMALLER_VERSION_THAN_IN_4.1-pu" ],
	    [ "version_warn", "=", "4.1-proposed-updates", "SAME_VERSION_THAN_IN_4.1-pu" ],
	],
	bin_checks => [
	    [ "must_be_in", "4.1" ],
	    [ "version_error", "<<", "4.1", "SMALLER_VERSION_THAN_IN_4.1" ],
	    [ "version_warn", "=", "4.1", "SAME_VERSION_THAN_IN_4.1" ],
	    [ "version_error", "<<", "4.1-proposed-updates", "SMALLER_VERSION_THAN_IN_4.1-pu" ],
	    [ "version_warn", "=", "4.1-proposed-updates", "SAME_VERSION_THAN_IN_4.1-pu" ],
	    [ "has_source_in", "4.1-experimental" ],
	],
    },
    '4.1~autobuild' => {
	base_uri => 'http://ftp.slis.fr/slis/dists/4.1-autobuild/main',
	source => 'yes',
	archs => [ 'i386' ],
	src_checks => [ ],
	bin_checks => [
	    [ "must_be_in", "4.1" ],
	    [ "version_error", "<<", "4.1", "SMALLER_VERSION_THAN_IN_4.1" ],
	    [ "version_error", "<<", "4.1-proposed-updates", "SMALLER_VERSION_THAN_IN_4.1-pu" ],
	    [ "version_error", "<<", "4.1-experimental", "SMALLER_VERSION_THAN_IN_4.1-exp" ],
	    #[ "has_source_in", "4.1~autobuild" ],
	],
    },
    '4.2' => {
	base_uri => 'http://ftp.slis.fr/slis/dists/4.2/main',
	source => 'yes',
	archs => [ 'i386' ],
	src_checks => [
	    [ "version_error", "<<", "4.1", "SMALLER_VERSION_THAN_IN_4.1" ],
	],
	bin_checks => [
	    [ "has_source_in", "4.2" ],
	    [ "version_error", "<<", "4.1", "SMALLER_VERSION_THAN_IN_4.1" ],
	],
    },

};


