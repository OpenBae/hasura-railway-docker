FROM hasura/graphql-engine:v2.2.0
RUN apt-get update && apt-get install cpulimit
CMD sh -c "cpulimit -c 1 -l 100 -- graphql-engine serve --server-port $PORT"
