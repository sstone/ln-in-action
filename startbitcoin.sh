#!/bin/sh -x
@echo on
export DEMODIR=`pwd`
bitcoin-qt -regtest -datadir=$DEMODIR/bitcoinA &
bitcoin-qt -regtest -datadir=$DEMODIR/bitcoinB &
bitcoin-qt -regtest -datadir=$DEMODIR/bitcoinC &
sleep 5
bitcoin-cli -rpcport=18501 addnode localhost:18400 onetry
bitcoin-cli -rpcport=18502 addnode localhost:18400 onetry
