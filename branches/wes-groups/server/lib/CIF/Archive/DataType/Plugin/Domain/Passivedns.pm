package CIF::Archive::DataType::Plugin::Domain::Passivedns;
use base 'CIF::Archive::DataType::Plugin::Domain';

sub prepare {
    my $class = shift;
    my $info = shift;
    return unless($info->{'impact'});
    return(0) unless($info->{'impact'} =~ /passive dns/);
    return('passivedns');
}

1;
