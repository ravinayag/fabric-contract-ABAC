#!/bin/bash
##Chaincode upgrade :

cp -r contract ~/fabric-samples/chaincode/fcabac/

docker exec cli peer chaincode list --installed
docker exec cli peer chaincode list --instantiated -C channelone
export version=1.5
export chainname=gensupplychainnet
docker exec cli peer chaincode package $chainname.out -n $chainname -v $version -p /opt/gopath/src/github.com/chaincode/fcabac/contract -l node
docker exec cli peer chaincode install $chainname.out -n $chainname -v $version -l node
docker exec -e  "CORE_PEER_ADDRESS=peer1.org1.example.com:8051" -e "CORE_PEER_ID=peer1.org1.example.com" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp" cli peer chaincode install  $chainname.out -n $chainname -v $version -l node
export ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

docker exec cli peer chaincode upgrade -o orderer.example.com:7050 --tls true --cafile $ORDERER_CA -C channelone -n $chainname -v $version -l node -c '{"Args":["init"]}' -P "OR ('Org1MSP.member','Org1MSP.peer')"

docker logs dev-peer0.org1.example.com-gensupplychainnet-$version


#export ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem
#docker exec cli peer chaincode instantiate -o orderer.example.com:7050 --tls true --cafile $ORDERER_CA -C channelone $chainname.out -n $chainname -v 1.1 -l node -c '{"Args":["init"]}'  -P "OR ('Org1MSP.member' , 'Org1MSP.peer')"

