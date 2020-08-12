
export PATH=${PWD}/../bin:${PWD}:$PATH
export FABRIC_CFG_PATH=${PWD}
export COMPOSE_PROJECT_NAME=newnet
export CHANNEL_NAME=channelone
configtxgen -profile TwoOrgsChannel -outputCreateChannelTx ./channel-artifacts/channelone.tx -channelID $CHANNEL_NAME
configtxgen -profile TwoOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org1MSPanchors_channelone.tx -channelID $CHANNEL_NAME -asOrg Org1MSP
configtxgen -profile TwoOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org2MSPanchors_channelone.tx -channelID $CHANNEL_NAME -asOrg Org2MSP

export ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem
export CORE_PEER_TLS_ENABLED=true
docker exec cli peer channel create -o orderer.example.com:7050 -c $CHANNEL_NAME -f ./channel-artifacts/channelone.tx --tls $CORE_TLS_ENABLED --cafile $ORDERER_CA

#docker exec cli sh ./scripts/2a_peer0.org1_chljoin.sh
#vi ./scripts/3_peer1.org1_chljoin.sh
#docker exec cli sh ./scripts/3_peer1.org1_chljoin.sh
#vi ./scripts/6_anchorpeerorg1.sh
#docker exec cli sh ./scripts/6_anchorpeerorg1.sh


#vi gensuply-install-cc.sh
./gensuply-install-cc.sh
docker ps -a
