package Server::JSONRPCServer;
use strict;
use warnings;
use Moose;
use MooseX::Singleton;
use JSON::RPC::Dispatch;
use Server::Router qw(routes);

has 'port' => (isa => 'Int', is => 'rw');
my $router = routes();
printf "Got a request";
JSON::RPC::Dispatch->new({
    prefix => 'Server::Handlers',
    router => $router
});

sub initialize {
    my ($self)
}
# sub start_rpc_server {
#     my ($self) = @_;
#     my $dispatcher = 

#     return sub {
#         my $env = shift;
#         $dispatcher->handle_psgi($env);
#     };
# }
1;