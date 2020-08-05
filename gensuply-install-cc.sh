#!/bin/bash
###Installcode

export chainname=gensupplychainnet1      #gensupply
export signpackge=gensupplychainnet1     #gensupply
docker exec cli peer chaincode list --installed
docker exec cli peer chaincode list --instantiated -C channelone

### Non sign package install
docker exec cli peer chaincode package $chainname.out -n $chainname -v 1.1 -p /opt/gopath/src/github.com/chaincode/fcabac/contract -l node  # -s -S -i "AND('OrgA.admin')" 
docker exec cli peer chaincode install $chainname.out -n $chainname -v 1.1 -l node
#or
#docker exec -e "CORE_PEER_ADDRESS=peer1.org1.example.com:7051" 
#            -e "CORE_PEER_ID=peer1.org1.example.com" 
#            -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp" 
#            -e "CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/ca.crt" 
#            -e "CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/server.key" 
#            -e "CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/server.crt" 
#            -e "CORE_PEER_TLS_ENABLED=true" 
#            -e "CORE_PEER_ADDRESS=peer1.org1.example.com:8051" cli peer chaincode install  $chainname.out -n $chainname -v 1.0 -l node



### Signed package
#docker exec cli peer chaincode package $chainname.out -n $chainname -v 1.0 -p /opt/gopath/src/github.com/chaincode/fcabac/contract -l node -s -S -i "AND('OrgA.admin')" 
#docker exec cli peer chaincode signpackage $chainname.out $signpackge.out
#docker exec cli peer chaincode install $signpackge.out -n $chainname -v 1.0 -l node
#or
#docker exec -e  "CORE_PEER_ADDRESS=peer1.org1.example.com:7051" 
#            -e "CORE_PEER_ID=peer1.org1.example.com" 
#            -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp" 
#            -e "CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/ca.crt" 
#            -e "CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/server.key" 
#            -e "CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/server.crt" 
#            -e "CORE_PEER_TLS_ENABLED=true" 
#            -e "CORE_PEER_ADDRESS=peer1.org1.example.com:8051" cli peer chaincode install  $signpackge.out -n $chainname -v 1.0 -l node


export ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem
docker exec cli peer chaincode instantiate -o orderer.example.com:7050 --tls true --cafile $ORDERER_CA -C channelone $chainname.out -n $chainname -v 1.1 -l node -c '{"Args":["init"]}'  -P "OR ('Org1MSP.member' , 'Org1MSP.peer')"
### signpackage
#docker exec cli peer chaincode instantiate -o orderer.example.com:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem -C mychannel $signpackge.out -n $chainname -v 1.0 -l node -c '{"Args":["init"]}'  -P "OR ('Org1MSP.member' , 'Org1MSP.peer')"


rm -rf /opt/ksbc/fcabac/gateway/local/gen_local_wallet 

echo " sleeping 15 secs"
sleep 15 

####  for FCABAC Project only
export chainname1=ledgerapi

### Non sign package install
#docker exec cli peer chaincode package $chainname1.out -n $chainname1 -v 1.0 -p /opt/gopath/src/github.com/chaincode/fcabac/contract/ledger-api -l node  # -s -S -i "AND('OrgA.admin')"
#docker exec cli peer chaincode install $chainname1.out -n $chainname1 -v 1.0 -l node


export chainname2=ordercontract

### Non sign package install
#docker exec cli peer chaincode package $chainname2.out -n $chainname2 -v 1.0 -p /opt/gopath/src/github.com/chaincode/fcabac/contract/lib/ -l node  # -s -S -i "AND('OrgA.admin')"
#docker exec cli peer chaincode install $chainname2.out -n $chainname2 -v 1.0 -l node



cd /opt/ksbc/fcabac
#rm -rf wallet 
#node enrollAdmin.js

#sh start_8001.sh

