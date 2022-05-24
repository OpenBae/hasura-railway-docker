FROM hasura/graphql-engine:v2.2.0

RUN sudo apt-get update -y \
    sudo apt-get install -y cpulimit
    
CMD sh -c "while true; do cpulimit -l 100 -- graphql-engine serve --server-port $PORT; done"
