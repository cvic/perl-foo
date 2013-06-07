#!/usr/bin/perl
#
# Using Getopt::Long in a propery way ;- )
#
use 5.010;
use strict;
use warnings; 
use Getopt::Long;
use Data::Dumper;

my ($debug, $help) =(0, 0);

# Arguments
my $result = GetOptions(
	"debug"	=> \$debug,
	"help"	=> \$help,
);

if ($help) {
print <<__HELP__;
	Usage: $0 [--debug] [--help]
	Where:
	--debug : Produce verbose output
__HELP__
	exit 0;
}

say Dumper $debug, $help; 
