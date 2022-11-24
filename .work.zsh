WORKNETWORK=`ifconfig | grep '(inet 19\.)' | wc -l`

if [ "WORKNETWORK" -gt 0 ];then
    echo "You are on the work network"
    #set your proxies here
    export http_proxy=http://proxy:8080
    export https_proxy=http://proxy:8080
    export no_proxy=localhost,.sock,.dev"
else
    http_proxy=""
    https_proxy=""
    no_proxy=""
    echo "You are not on the work network"
fi