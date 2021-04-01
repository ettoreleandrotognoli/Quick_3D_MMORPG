FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN sed -i "s#js;#js mjs;#" /etc/nginx/mime.types
RUN rm -rf *
COPY . .
ENV SERVER ws://localhost:3000
CMD find . -regex .*js \( -exec sed -i "s#ws://localhost:3000#${SERVER}#" {} \; \) && nginx -g "daemon off;"