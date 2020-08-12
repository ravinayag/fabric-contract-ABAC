#! /bin/bash
#
# This script runs through a sample scenario of creating Launches, Payloads 
# It then takes a Payload and Launch through the process
#
echo "What is the IP address for the API server (default is localhost:3000)?"
read API_URL
API_URL=${API_URL:-localhost:3000}
# base64 encoded string 'userid:userpwd' added for authorization header
echo 'curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic QmlnYmF6emFyOkJpZ2Jhenphcg==" -H "Content-Type: application/json" -d "{\"usertype\":\"retailer\"}"'
curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic QmlnYmF6emFyOkJpZ2Jhenphcg==" -H "Content-Type: application/json" -d "{\"usertype\":\"retailer\"}"
echo ""
echo ""
echo 'curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic SEVCOkhFQg==" -H "Content-Type: application/json" -d "{\"usertype\":\"retailer\"}"'
#curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic SEVCOkhFQg==" -H "Content-Type: application/json" -d "{\"usertype\":\"retailer\"}"
echo ""
echo ""
echo 'curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic WEZhcm06WEZhcm0=" -H "Content-Type: application/json" -d "{\"usertype\":\"producer\"}"'
curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic WEZhcm06WEZhcm0=" -H "Content-Type: application/json" -d "{\"usertype\":\"producer\"}"
echo ""
echo ""
echo 'curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic WUZhcm06WUZhcm0=" -H "Content-Type: application/json" -d "{\"usertype\":\"producer\"}"'
curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic WUZhcm06WUZhcm0=" -H "Content-Type: application/json" -d "{\"usertype\":\"producer\"}"
echo ""
echo ""
echo 'curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic R292dEF1dGg6R292dEF1dGg=" -H "Content-Type: application/json" -d "{\"usertype\":\"regulator\"}"'
curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic R292dEF1dGg6R292dEF1dGg=" -H "Content-Type: application/json" -d "{\"usertype\":\"regulator\"}"
echo ""
echo ""
echo 'curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic Qmx1ZURhcnQ6Qmx1ZURhcnQ=" -H "Content-Type: application/json" -d "{\"usertype\":\"shipper\"}"'
curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic Qmx1ZURhcnQ6Qmx1ZURhcnQ=" -H "Content-Type: application/json" -d "{\"usertype\":\"shipper\"}"
echo ""
echo ""
echo 'curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic S1RDOktUQw==" -H "Content-Type: application/json" -d "{\"usertype\":\"shipper\"}"'
curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic S1RDOktUQw==" -H "Content-Type: application/json" -d "{\"usertype\":\"shipper\"}"
echo ""
echo ""
echo 'curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic Q29uc3VtZXI6Q29uc3VtZXI=" -H "Content-Type: application/json" -d "{\"usertype\":\"customer\"}"'
curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic Q29uc3VtZXI6Q29uc3VtZXI=" -H "Content-Type: application/json" -d "{\"usertype\":\"customer\"}"
