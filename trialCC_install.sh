#!/bin/bash
. setpeer.sh org1 peer0 
export CHANNEL_NAME="trialchannel"
peer chaincode install -n trialCC -v 1.0 -p github.com/trialCC
. setpeer.sh org2 peer0 
export CHANNEL_NAME="trialchannel"
peer chaincode install -n trialCC -v 1.0 -p github.com/trialCC
. setpeer.sh org3 peer0 
export CHANNEL_NAME="trialchannel"
peer chaincode install -n trialCC -v 1.0 -p github.com/trialCC
. setpeer.sh org4 peer0 
export CHANNEL_NAME="trialchannel"
peer chaincode install -n trialCC -v 1.0 -p github.com/trialCC
peer chaincode instantiate -o orderer.orderer.com:7050 --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA -C trialchannel -n trialCC -v 1.0 -c '{"Args":["init","a", "100", "b","200"]}' -P " OR( 'org1MSP.member','org2MSP.member','org3MSP.member','org4MSP.member' ) " 
