FROM hasura/graphql-engine:v2.15.2


CMD graphql-engine \
    serve \
    --server-port $PORT
