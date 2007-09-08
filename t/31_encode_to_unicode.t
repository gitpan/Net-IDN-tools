# $Id: 02_to_unicode.t 23 2006-11-16 23:35:14Z cfaerber $

use utf8;
use strict;

use Test::More tests => 4;
use Net::IDN::Encode;

is(Net::IDN::Encode::_to_unicode('faerber'),'faerber');
is(Net::IDN::Encode::_to_unicode('xn--frber-gra'),'färber');
is(Net::IDN::Encode::_to_unicode('xn--frber-gra'),'färber');
is(Net::IDN::Encode::_to_unicode('xn--fiq80yua78t'),'中央大学');
