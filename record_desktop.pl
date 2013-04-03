#!/usr/bin/perl

use strict;
use warnings;

my $applicant = shift;
my $hour_limit = shift;

if( ! $applicant) {
  $applicant = 'record';
}
if( ! $hour_limit ) {
	$hour_limit = 5;
}
my $countdown = 3600 * $hour_limit; # in secs.


$| = 1;

my $beg_time = time;
my $end_time = $beg_time + $countdown;
my $num = 1;

for (;;) {
	my $time = time;
	last if ($time >= $end_time);

	system("recordmydesktop -o $applicant" . "_interview_" . "$num --display=:0 --on-the-fly-encoding --no-sound --fps 10 &") == 0 or die $!;
	sleep(3600);
	system("kill `ps -A|awk '/recordmydesktop/{print $1}'`");
	$num++;

}

print("\r-------- DONE RECORDING! -------\n");
