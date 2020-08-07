#! /bin/bash
#
# This script runs through a sample scenario of creating Launches, Payloads 
# It then takes a Payload and Launch through the process
#
echo "What is the IP address for the API server (default is localhost:3000)?"
read API_URL
API_URL=${API_URL:-localhost:3000}
#set -x
# base64 encoded string added for 'admin:adminpw' to authorization header
echo 'curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"Bigbazzar\",\"password\":\"Bigbazzar\",\"usertype\":\"retailer\"}"'
curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"Bigbazzar\",\"password\":\"Bigbazzar\",\"usertype\":\"retailer\"}"
echo ""
echo ""
#echo 'curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"HEB\",\"password\":\"HEB\",\"usertype\":\"retailer\"}"'
#curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"HEB\",\"password\":\"HEB\",\"usertype\":\"retailer\"}"
echo ""
echo ""
echo 'curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"XFarm\",\"password\":\"XFarm\",\"usertype\":\"producer\"}"'
curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"XFarm\",\"password\":\"XFarm\",\"usertype\":\"producer\"}"
echo ""
echo ""
echo 'curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"YFarm\",\"password\":\"YFarm\",\"usertype\":\"producer\"}"'
curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"YFarm\",\"password\":\"YFarm\",\"usertype\":\"producer\"}"
echo ""
echo ""
echo 'curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"GovtAuth\",\"password\":\"GovtAuth\",\"usertype\":\"regulator\"}"'
curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"GovtAuth\",\"password\":\"GovtAuth\",\"usertype\":\"regulator\"}"
echo ""
echo ""
echo 'curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"BlueDart\",\"password\":\"BlueDart\",\"usertype\":\"shipper\"}"'
curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"BlueDart\",\"password\":\"BlueDart\",\"usertype\":\"shipper\"}"
echo ""
echo ""
echo 'curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"KTC\",\"password\":\"KTC\",\"usertype\":\"shipper\"}"'
curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"KTC\",\"password\":\"KTC\",\"usertype\":\"shipper\"}"
echo ""
echo ""
echo 'curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"Consumer\",\"password\":\"Consumer\",\"usertype\":\"customer\"}"'
curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic YWRtaW46YWRtaW5wdw==" -H "Content-Type: application/json" -d "{\"userid\":\"Consumer\",\"password\":\"Consumer\",\"usertype\":\"customer\"}"
