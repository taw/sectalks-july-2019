#!/usr/bin/env perl6
say "Need flag to verify" and exit unless @*ARGS;
$_=shift @*ARGS;
s:g/\o173/o173/;
s:g/\o137/o137/;
s:g/\o175/o175/;
$_=:36($_);
$_=(split("", $_) »+^» 1 »+» 7) »%» 10 »~^» 'A';
$_ ~~ s:g/\s//;
$_=:36($_);
my @data = []; # Put data here
while @data {
  unless $_ % @data.shift == @data.shift {
    say "Bad flag" and exit
  }
}
say "Good flag";
