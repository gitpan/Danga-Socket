#!/usr/bin/perl
#
#   Perl Makefile for Danga-Socket
#   $Id: Makefile.PL 62 2005-08-01 19:09:44Z bradfitz $
#
#   Invoke with 'perl Makefile.PL'
#
#   See ExtUtils::MakeMaker (3) for more information on how to influence
#    the contents of the Makefile that is written
#

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                    => 'Danga::Socket',
    VERSION_FROM            => 'Socket.pm', # finds $VERSION
    AUTHOR                  => 'Brad Fitzpatrick <brad@danga.com>',
    ABSTRACT                => 'Async socket class',
    PREREQ_PM               => {
        'Socket'        => 0,
        'IO::Poll'      => 0,
        fields          => 0,
        'POSIX'         => 0,
        'Test::More'    => 0,
        'Time::HiRes'   => 0,
        'Sys::Syscall'  => 0,
    },
    dist                    => {
        CI                      => "cvs commit",
        RCS_LABEL               => 'cvs tag RELEASE_$(VERSION_SYM)',
        SUFFIX                  => ".gz",
        DIST_DEFAULT            => 'all tardist',
        COMPRESS                => "gzip",
    },

);

