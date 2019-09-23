package Server::Router;
use strict;
use warnings;
use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(routes); 
use Moose;
use JSON::RPC::Dispatch;
use Router::Simple::Declare;

sub routes {
    return router {
        connect "ping" => {
            handler => "PingHandler",
            action => "process"
        };
    }
}

1;