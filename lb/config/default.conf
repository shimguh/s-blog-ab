upstream serv {
    server s-blog-a.internal:80;
    server s-blog.internal:80;
}

server {
    listen 80; 

    location / {
        proxy_pass http://serv;
    }
}

