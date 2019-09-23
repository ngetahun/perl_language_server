requires 'JSON';
requires 'JSON::RPC';
requires 'JSON::RPC::Server';
requires 'Moose';
requires 'Lexical::SealRequireHints';
requires 'MooseX::Singleton';

on 'test' => sub {
    requires 'Test2::Suite';
    requires 'Test::More';
    requires 'Test::TCP';
    requires 'Test::Type';
}