FROM alpine:3

RUN apk add --update openssh-client && rm -rf /var/cache/apk/*

CMD ssh \
-vv \
-o StrictHostKeyChecking=no \
-N $REMOTE_USER@$REMOTE_HOST \
$(for i in `echo $PORTS | sed -e 's/,/\n/g'`;do if [[ $i == *":"* ]]; then echo -L *:$i; else echo -L *:$i:127.0.0.1:$i; fi ;done) \
&& while true; do sleep 30; done;

