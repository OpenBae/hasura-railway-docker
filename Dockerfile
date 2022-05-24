FROM hasura/graphql-engine:v2.2.0
RUN apt-get update && apt-get install cpulimit
CMD sh -c "while true; do graphql-engine serve --server-port $PORT; done"
