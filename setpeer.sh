
#!/bin/bash
export ORDERER_CA=/opt/ws/crypto-config/ordererOrganizations/orderer.com/msp/tlscacerts/tlsca.orderer.com-cert.pem

if [ $# -lt 2 ];then
	echo "Usage : . setpeer.sh org1|org2|org3|org4| <peerid>"
fi
export peerId=$2

if [[ $1 = "org1" ]];then
	echo "Setting to organization org1 peer "$peerId
	export CORE_PEER_ADDRESS=$peerId.org1.com:7051
	export CORE_PEER_LOCALMSPID=org1MSP
	export CORE_PEER_TLS_CERT_FILE=/opt/ws/crypto-config/peerOrganizations/org1.com/peers/$peerId.org1.com/tls/server.crt
	export CORE_PEER_TLS_KEY_FILE=/opt/ws/crypto-config/peerOrganizations/org1.com/peers/$peerId.org1.com/tls/server.key
	export CORE_PEER_TLS_ROOTCERT_FILE=/opt/ws/crypto-config/peerOrganizations/org1.com/peers/$peerId.org1.com/tls/ca.crt
	export CORE_PEER_MSPCONFIGPATH=/opt/ws/crypto-config/peerOrganizations/org1.com/users/Admin@org1.com/msp
fi

if [[ $1 = "org2" ]];then
	echo "Setting to organization org2 peer "$peerId
	export CORE_PEER_ADDRESS=$peerId.org2.com:7051
	export CORE_PEER_LOCALMSPID=org2MSP
	export CORE_PEER_TLS_CERT_FILE=/opt/ws/crypto-config/peerOrganizations/org2.com/peers/$peerId.org2.com/tls/server.crt
	export CORE_PEER_TLS_KEY_FILE=/opt/ws/crypto-config/peerOrganizations/org2.com/peers/$peerId.org2.com/tls/server.key
	export CORE_PEER_TLS_ROOTCERT_FILE=/opt/ws/crypto-config/peerOrganizations/org2.com/peers/$peerId.org2.com/tls/ca.crt
	export CORE_PEER_MSPCONFIGPATH=/opt/ws/crypto-config/peerOrganizations/org2.com/users/Admin@org2.com/msp
fi

if [[ $1 = "org3" ]];then
	echo "Setting to organization org3 peer "$peerId
	export CORE_PEER_ADDRESS=$peerId.org3.com:7051
	export CORE_PEER_LOCALMSPID=org3MSP
	export CORE_PEER_TLS_CERT_FILE=/opt/ws/crypto-config/peerOrganizations/org3.com/peers/$peerId.org3.com/tls/server.crt
	export CORE_PEER_TLS_KEY_FILE=/opt/ws/crypto-config/peerOrganizations/org3.com/peers/$peerId.org3.com/tls/server.key
	export CORE_PEER_TLS_ROOTCERT_FILE=/opt/ws/crypto-config/peerOrganizations/org3.com/peers/$peerId.org3.com/tls/ca.crt
	export CORE_PEER_MSPCONFIGPATH=/opt/ws/crypto-config/peerOrganizations/org3.com/users/Admin@org3.com/msp
fi

if [[ $1 = "org4" ]];then
	echo "Setting to organization org4 peer "$peerId
	export CORE_PEER_ADDRESS=$peerId.org4.com:7051
	export CORE_PEER_LOCALMSPID=org4MSP
	export CORE_PEER_TLS_CERT_FILE=/opt/ws/crypto-config/peerOrganizations/org4.com/peers/$peerId.org4.com/tls/server.crt
	export CORE_PEER_TLS_KEY_FILE=/opt/ws/crypto-config/peerOrganizations/org4.com/peers/$peerId.org4.com/tls/server.key
	export CORE_PEER_TLS_ROOTCERT_FILE=/opt/ws/crypto-config/peerOrganizations/org4.com/peers/$peerId.org4.com/tls/ca.crt
	export CORE_PEER_MSPCONFIGPATH=/opt/ws/crypto-config/peerOrganizations/org4.com/users/Admin@org4.com/msp
fi

	