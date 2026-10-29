#! /usr/bin/env bash


pkgdir=$1

if [ "$1" == "" ]; then
	echo "Please supply a package to build and check"
	exit 1
fi

source ~soft_bio_267/initializes/init_R
export R_CHECK_LIMIT_CORES=2

R CMD build $pkgdir &> build_log
wait
R CMD check --as-cran $pkgdir*.tar.gz &> check_log

