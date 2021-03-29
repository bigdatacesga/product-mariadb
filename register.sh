# First get a TOKEN
# export TOKEN='<TOKEN>'
# export AUTH="x-auth-token: $TOKEN"
http POST http://paas:6000/bigdata/api/v1/products name=mariadb version=10.1.19-BETA description='mariadb is a free and open-source cross-platform document-oriented database.' logo_url='http://hadoop.cesga.es/img/mariadb-usa-inc.png' x-auth-token:$TOKEN
curl -X PUT http://paas:6000/bigdata/api/v1/products/mariadb/10.1.19-BETA/template --data-binary @template.json -H "Content-type: application/json" -H "$AUTH"
curl -X PUT http://paas:6000/bigdata/api/v1/products/mariadb/10.1.19-BETA/options --data-binary @options.json -H "$AUTH"
curl -X PUT http://paas:6000/bigdata/api/v1/products/mariadb/10.1.19-BETA/orchestrator --data-binary @fabfile.py -H "$AUTH"

# Launching
# http POST http://paas:6000/bigdata/api/v1/products/mariadb/10.1.19 password="verysecret" x-auth-token:$TOKEN
