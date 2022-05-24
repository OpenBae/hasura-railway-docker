FROM hasura/graphql-engine:v2.2.0
RUN apt-get update && apt-get install cpulimit
CMD graphql-engine serve --server-port $PORT
CMD sh -c "while true; do cpulimit -p $! -l 30 -b; done"
