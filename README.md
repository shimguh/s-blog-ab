# s-blog-ab

## docker compose
```
$ sudo docker compose -f compose.yml  up -d
[+] Running 7/7
 ✔ Container awsgoo-blog-1         Running                                                                         0.0s
 ✔ Container awsgoo-blog-6         Started                                                                         0.7s
 ✔ Container awsgoo-blog-4         Started                                                                         3.8s
 ✔ Container awsgoo-blog-3         Started                                                                         3.0s
 ✔ Container awsgoo-blog-2         Started                                                                         1.7s
 ✔ Container awsgoo-blog-5         Started                                                                         2.4s
 ✔ Container awsgoo-nginx-proxy-1  Running                                                                         0.0s
 ```

 ## docker compose scale
 ```
$ sudo docker compose -f compose.yml up -d --scale blog=5
[+] Running 6/5
 ✔ Container awsgoo-blog-1         Running                                                                         0.0s
 ✔ Container awsgoo-blog-6         Running                                                                         0.0s
 ✔ Container awsgoo-blog-2         Running                                                                         0.0s
 ✔ Container awsgoo-blog-5         Running                                                                         0.0s
 ✔ Container awsgoo-blog-3         Running                                                                         0.0s
 ✔ Container awsgoo-nginx-proxy-1  Running                                                                         0.0s
 ```

 ## docker compose down
 ```
$ sudo docker compose down
[+] Running 7/7
 ✔ Container awsgoo-nginx-proxy-1  Removed                                                                         0.9s
 ✔ Container awsgoo-blog-1         Removed                                                                        11.3s
 ✔ Container awsgoo-blog-2         Removed                                                                        11.4s
 ✔ Container awsgoo-blog-6         Removed                                                                        11.6s
 ✔ Container awsgoo-blog-5         Removed                                                                        11.8s
 ✔ Container awsgoo-blog-3         Removed                                                                        11.0s
 ✔ Network awsgoo_default          Removed                                                                         0.8s
 ```
 