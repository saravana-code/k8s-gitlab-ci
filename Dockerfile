FROM nginx:alpine

# Create app directory

WORKDIR /usr/share/nginx/html/

# Bundle app source
COPY dist ui-dashboard

COPY nginx.conf /etc/nginx/conf.d/default.conf


RUN ls -lart

# EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
