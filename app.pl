use strict;
use warnings;
use HTTP::Server::Simple::CGI;

{
    package HelloWorldWebServer;
    use base 'HTTP::Server::Simple::CGI';

    sub handle_request {
        my ($self, $cgi) = @_;
        print "HTTP/1.0 200 OK\r\n";
        print $cgi->header('text/plain');
        print "Hello World!!\n";
    }
}

my $server = HelloWorldWebServer->new(8001);
$server->run();