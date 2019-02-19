#!/usr/bin/env bash

if [[ "$TRAVIS_OS_NAME" == "windows" ]]; then
	mv target/release/rudoku rudoku.exe
	zip "rudoku-$TRAVIS_TAG-$TRAVIS_OS_NAME-x86_64.zip" rudoku.exe
else
	mv target/release/rudoku rudoku
	zip "rudoku-$TRAVIS_TAG-$TRAVIS_OS_NAME-x86_64.zip" rudoku
fi
