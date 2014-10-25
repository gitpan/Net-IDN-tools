# $Id: 31_encode_all_bytes.t 33 2007-09-12 20:30:36Z cfaerber $

use bytes;
use strict;

use Test::More tests => 21;
use Net::IDN::Encode;

is(Net::IDN::Encode::_to_ascii('faerber'),'faerber');
is(Net::IDN::Encode::_to_ascii('xn--frber-gra'),'xn--frber-gra');
is(Net::IDN::Encode::_to_ascii('f�rber'),'xn--frber-gra');

is(Net::IDN::Encode::_to_unicode('faerber'),'faerber');
is(Net::IDN::Encode::_to_unicode('xn--frber-gra'),'f�rber');
is(Net::IDN::Encode::_to_unicode('xn--frber-gra'),'f�rber');

is(domain_to_ascii('faerber.muc.de'),'faerber.muc.de');
is(domain_to_ascii('xn--frber-gra.muc.de'),'xn--frber-gra.muc.de');
is(domain_to_ascii('f�rber.muc.de'),'xn--frber-gra.muc.de');

is(domain_to_unicode('faerber.muc.de'),'faerber.muc.de');
is(domain_to_unicode('xn--frber-gra.muc.de'),'f�rber.muc.de');
is(domain_to_unicode('xn--frber-gra.muc.de'),'f�rber.muc.de');

is(email_to_ascii('claus@faerber.muc.de'),'claus@faerber.muc.de');
is(email_to_ascii('claus@xn--frber-gra.muc.de'),'claus@xn--frber-gra.muc.de');
is(email_to_ascii('claus@f�rber.muc.de'),'claus@xn--frber-gra.muc.de');
is(email_to_ascii(''), undef);
is(email_to_ascii('test'), 'test');

is(email_to_unicode('claus@faerber.muc.de'),'claus@faerber.muc.de');
is(email_to_unicode('claus@xn--frber-gra.muc.de'),'claus@f�rber.muc.de');
is(email_to_unicode(''),undef);
is(email_to_unicode('test'),'test');
