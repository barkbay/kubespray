#!/bin/bash

/usr/local/bin/kubectl -n default describe secret $(/usr/local/bin/kubectl -n default get secret | awk '/^mmo-token-/{print $1}') | awk '$1=="token:"{print $2}' > /tmp/minikube.token
