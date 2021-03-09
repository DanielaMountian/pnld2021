#!/usr/bin/perl
use utf8;

		print "Which file? ";	$input=<STDIN>;
		open(FILE, "$input") or die $!;
			while(<FILE>) { $string .=$_ }

		print "Output to... ";	$outfile=<STDIN>;
		open(OUTPUT, ">$outfile");

	$string =~ s/\ {}-/\ --/gic; 			#\ {}- => --
	$string =~ s/\.\.\./\\ldots{}/gic;
#	$string =~ s/^{\\textquotedbl}/``/gic;
	$string =~ s/\ {\\textquotedbl}/\ ``/gic;
	$string =~ s/\ }/}\ /gic;
	$string =~ s/([a-ź]){}-/\1"-/gic;
	# Num romano
	$string =~ s/([0-9])-([0-9])/\1--\2/gic;
	$string =~ s/([0-9])"-([0-9])/\1--\2/gic;
	$string =~ s/([0-9]){}-([0-9])/\1--\2/gic;

		print OUTPUT $string;
		close(OUTPUT);
