
#!/bin/bash -e




echo "Building channel for trialchannel" 

. setpeer.sh org1 peer0
export CHANNEL_NAME="trialchannel"
peer channel create -o orderer.orderer.com:7050 -c $CHANNEL_NAME -f ./trialchannel.tx --tls true --cafile $ORDERER_CA -t 10000


. setpeer.sh org1 peer0
export CHANNEL_NAME="trialchannel"
peer channel join -b $CHANNEL_NAME.block


. setpeer.sh org2 peer0
export CHANNEL_NAME="trialchannel"
peer channel join -b $CHANNEL_NAME.block


. setpeer.sh org3 peer0
export CHANNEL_NAME="trialchannel"
peer channel join -b $CHANNEL_NAME.block


. setpeer.sh org4 peer0
export CHANNEL_NAME="trialchannel"
peer channel join -b $CHANNEL_NAME.block

