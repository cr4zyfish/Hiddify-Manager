cd $( dirname -- "$0"; )
function main(){
# curl -s --interface warp https://cloudflare.com/cdn-cgi/status --connect-timeout 1
curl -s --interface warp https://cloudflare.com/cdn-cgi/trace --connect-timeout 1
cd  wiregaurd&& wgcf status

curl -s --interface warp --connect-timeout 1 http://ip-api.com?fields=message,country,countryCode,city,isp,org,as,query

}
mkdir -p log/system/
main |& tee log/system/warp.log
