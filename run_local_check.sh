#! /usr/bin/env bash


export PATH=./check_scripts:$PATH

pkgdir=$1

document.R -d $pkgdir
run_examples.R -d $pkgdir
run_tests.R -d $pkgdir

