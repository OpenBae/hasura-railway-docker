FROM hasura/graphql-engine:v2.17.1


CMD graphql-engine \
    serve \
    --server-port $PORT
