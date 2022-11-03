FROM nginx:latest
COPY ./dist/crudtuto-Front /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]
