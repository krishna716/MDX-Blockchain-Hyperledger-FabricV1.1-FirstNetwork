#!/bin/bash
if [[ ! -z "$1" ]]; then  
	. setpeer.sh org1 peer0 
export CHANNEL_NAME="trialchannel"
	peer chaincode install -n trialCC -v $1 -p github.com/trialCC
	. setpeer.sh org2 peer0 
export CHANNEL_NAME="trialchannel"
	peer chaincode install -n trialCC -v $1 -p github.com/trialCC
	. setpeer.sh org3 peer0 
export CHANNEL_NAME="trialchannel"
	peer chaincode install -n trialCC -v $1 -p github.com/trialCC
	. setpeer.sh org4 peer0 
export CHANNEL_NAME="trialchannel"
	peer chaincode install -n trialCC -v $1 -p github.com/trialCC
	peer chaincode upgrade -o orderer.orderer.com:7050 --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA -C trialchannel -n trialCC -v $1 -c '{"Args":["init",""]}' -P " OR( 'org1MSP.member','org2MSP.member','org3MSP.member','org4MSP.member' ) " 
else
	echo ". trialCC_updchain.sh  <Version Number>" 
fi
