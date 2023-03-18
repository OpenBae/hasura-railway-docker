FROM hasura/graphql-engine:v2.15.2
RUN apt-get update && apt-get install cpulimit
CMD sh -c "while true; do cpulimit -c 1 -l 100 -- graphql-engine serve --server-port $PORT; done"
