
our @ARCHES = ('i386'); #, 'amd64');
$REPOS = {
    '4.1' => {
	base_uri => 'http://ftp.slis.fr/slis/dists/4.1',
	components => {
	    'main' => {},
	    'main/debian-installer' => {
		source => 0,
	    },
	},
	source => 1,
	archs => [ @ARCHES ],
	src_checks => [
	],
	bin_checks => [
	    [ "has_source_in", "4.1" ],
	],
    },
    '4.1-proposed-updates' => {
	base_uri => 'http://ftp.slis.fr/slis/dists/4.1-proposed-updates',
	components => {
	    'main' => {},
	    'main/debian-installer' => {
		source => 0,
	    },
	},
	source => 1,
	archs => [ @ARCHES ],
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
	base_uri => 'http://ftp.slis.fr/slis/dists/4.1-experimental',
	components => {
	    'main' => {},
	    'main/debian-installer' => {
		source => 0,
	    },
	},
	source => 1,
	archs => [ @ARCHES ],
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
#    '4.1~autobuild' => {
#	base_uri => 'http://ftp.slis.fr/slis/dists/4.1-autobuild/main',
#	source => 1,
#	archs => [ 'i386' ],
#	src_checks => [ ],
#	bin_checks => [
#	    [ "must_be_in", "4.1" ],
#	    [ "version_error", "<<", "4.1", "SMALLER_VERSION_THAN_IN_4.1" ],
#	    [ "version_error", "<<", "4.1-proposed-updates", "SMALLER_VERSION_THAN_IN_4.1-pu" ],
#	    [ "version_error", "<<", "4.1-experimental", "SMALLER_VERSION_THAN_IN_4.1-exp" ],
#	    #[ "has_source_in", "4.1~autobuild" ],
#	],
#    },
    '4.2' => {
	base_uri => 'http://ftp.slis.fr/slis/dists/4.2',
	components => {
	    'main' => {},
	    'main/debian-installer' => {
		source => 0,
	    },
	},
	source => 1,
	archs => [ @ARCHES ],
	src_checks => [
	    [ "version_error", "<<", "4.1", "SMALLER_VERSION_THAN_IN_4.1" ],
	],
	bin_checks => [
	    [ "has_source_in", "4.2" ],
	    [ "version_error", "<<", "4.1", "SMALLER_VERSION_THAN_IN_4.1" ],
	],
    },
};


