#!/bin/bash
docker exec test-nc curl -s -c /tmp/cookies.txt -X POST -d "user=admin&password=admin" http://localhost:8080/login
docker exec test-nc curl -s -b /tmp/cookies.txt http://localhost:8080/apps/dashboard/ > /dev/null
echo "Dashboard requested"
