#!/bin/sh -x
@echo on
export DEMODIR=`pwd`
bitcoin-cli -regtest -datadir=$DEMODIR/bitcoinA generate 150
sleep 2
bitcoin-cli -regtest -datadir=$DEMODIR/bitcoinB generate 150
sleep 2
bitcoin-cli -regtest -datadir=$DEMODIR/bitcoinC generate 150
sleep 1
bitcoin-cli -regtest -datadir=$DEMODIR/bitcoinA getblockchaininfo
bitcoin-cli -regtest -datadir=$DEMODIR/bitcoinB getblockchaininfo
bitcoin-cli -regtest -datadir=$DEMODIR/bitcoinC getblockchaininfo
