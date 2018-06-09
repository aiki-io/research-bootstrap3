FROM nginx:alpine
RUN apk --update add git nodejs && rm -rf /var/cache/apk/* && \
    npm install -g bower grunt-cli && \
    echo '{ "allow_root": true }' > /root/.bowerrc
WORKDIR /usr/share/nginx/html/
COPY . .
RUN bower install
