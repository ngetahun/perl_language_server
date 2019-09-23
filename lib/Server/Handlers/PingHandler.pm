package Server::Handlers::PingHandler;
use strict;
use warnings;
use JSON::XS;
use Moose;

sub process {
    my ($self, $params, $procedure, @extra_args) = @_;

    return encode_json { message => 'pong' };
}

1;