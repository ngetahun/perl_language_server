use strict;
use warnings;

use FindBin qw($Bin);
use lib "$Bin/lib/", "$Bin/local/lib/perl5/";
use JSON::RPC::Server::CGI;
use JSON::RPC::Server::Daemon;

my $port = shift;

my $server = eval {
	# Start server HTTP Daemon
    JSON::RPC::Server::Daemon->new(LocalPort => $port)
                         ->dispatch({'/jsonrpc/API' => 'Server::JSONRPCServer'})
                         ->handle();
};
if ($@) {
    die $@;
}
else {
    print $server;
}

