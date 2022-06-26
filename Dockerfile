FROM nginx:latest

WORKDIR /app

COPY . .

RUN cat index.html > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]