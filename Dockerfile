FROM nginx:latest

WORKDIR /app

COPY . .

#COPY index.html .

RUN cat index.html > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]