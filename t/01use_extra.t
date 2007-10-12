# $Id: 01use_extra.t 62 2007-09-29 19:08:04Z cfaerber $

use strict;
use Test::More tests => 2;

use_ok 'IDNA::Punycode';
use_ok 'Encode::Punycode';
