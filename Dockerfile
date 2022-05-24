FROM hasura/graphql-engine:v2.2.0

CMD sh -c "while true; do cpulimit -l 100 -- graphql-engine serve --server-port $PORT; done"
