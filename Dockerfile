FROM hasura/graphql-engine:v2.2.0

CMD cpulimit -l 100 graphql-engine \
    serve \
    --server-port $PORT
