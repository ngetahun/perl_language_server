use strict;
use warnings;

use Test::More tests => 0;
use Test::Type;
use Test::Exception;
use Server::Router qw(routes);

use_ok('Server::Router');
# can_ok 'Router', 'import';

my $routes = routes();
isa_ok($routes, 'Router::Simple');