# $Id: 00use.t 60 2007-09-29 19:03:40Z cfaerber $

use strict;
use Test::More tests => 3;

use_ok 'Net::IDN::Nameprep';
use_ok 'Net::IDN::Punycode';
use_ok 'Net::IDN::Encode';
