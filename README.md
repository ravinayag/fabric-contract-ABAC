# Read ME First

This is the Fork of [IBM_FCA_BAC](https://github.com/IBM/fabric-contract-attribute-based-access-control) to deploy without vsc and IBM cloud platform.

My fork is useful, if you deploy only the fabric network part with 1 org, 2 peers, orderer & CA,  The rest of the actions are followed from the IBM FCA-BAC procedure.

## Start the Fabric. 

* 1, Clone this repo under ```/opt/bc/fcabac```  folder 
* 2, Copy fabric-samples-explained to fabric-samples/ folder. 
* 3, Move your working directory location to ```~/fabric-samples/fabric-samples-explained/```
* 4, To start the fabric network, Run the script 
    ```./test-start.sh```
* 5, Once the Network up,  You have to install, and instantiate the Chaincode.
``` ./gensuply-install-cc.sh ```
 Once you have sucessfully Instantiateed the chaincode. you have to start the server and client side application services.
 * 6, Start the server service  from ```/opt/bc/fcabac/application/server/```
  ``` 
  npm install 
  npm install fabric-ca-client@1.4.0            <<<< incase if you face error moudle is not found.
  node server & 
  ```
 * 7, Once the service is up, you move to client folder /opt/bc/fcabac/application/client
  ``` 
  npm install
  ng serve &
  ```
 * 8, Thats all, Your fabric is up with IBM,'s FCABAC is available for your learning service 

Thanks