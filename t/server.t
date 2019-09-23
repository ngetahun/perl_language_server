use strict;
use warnings;
use Test2::Bundle::More;
use Test2::Tools::Compare;
#use Test::More;
#use Test::TCP;
use Test::Type;
use Test::Exception;

use Server::JSONRPCServer;

my $json_server = Server::JSONRPCServer->instance;

isa_ok($json_server, 'Server::JSONRPCServer', 'Instance is of type JSONRPCServer');

my $port_num = int(8000);
is($json_server->port($port_num), $port_num, 'setter');
is($json_server->port, $port_num, 'getter');
ok_number($json_server->port);

my $def_err  = qr{Attribute \(port\) does not pass the type constraint because:};
my $home_err = qr{Validation failed for 'Int' with value asxhjbcdk};
 
throws_ok { $json_server->port('asxhjbcdk') } qr{$def_err $home_err}, 'exception';


my $other_instance = Server::JSONRPCServer->instance;
ok($json_server eq $other_instance, 'singleton');

done_testing;
1;