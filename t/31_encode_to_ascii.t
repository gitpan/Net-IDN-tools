# $Id: 01_to_ascii.t 23 2006-11-16 23:35:14Z cfaerber $

use utf8;
use strict;

use Test::More tests => 4;
use Net::IDN::Encode;

is(Net::IDN::Encode::_to_ascii('faerber'),'faerber');
is(Net::IDN::Encode::_to_ascii('xn--frber-gra'),'xn--frber-gra');
is(Net::IDN::Encode::_to_ascii('färber'),'xn--frber-gra');
is(Net::IDN::Encode::_to_ascii('中央大学'),'xn--fiq80yua78t');
