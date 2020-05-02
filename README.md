# DAY1
## 목적
nginx 1개와 tomcat 2 개를 이용해서 서비스를 제공
## 생각 
1. http (80 port) 의 요청을 nginx 에서 받고
2. nginx 에서는 proxy 역할로써 tomcat 에 다시 보내주는데
3. tomcat 각각의 port 를 가지고 있어
4. nginx는 port 단위로 요청을 전송...?
## 결과
```
2020/05/02 08:36:45 [error] 7#7: *6 no live upstreams while connecting to upstream, client: 172.17.0.1, server: proxy_server, request: "GET / HTTP/1.1", upstream: "http://tomcat/", host: "127.0.0.1"
172.17.0.1 - - [02/May/2020:08:36:45 +0000] "GET / HTTP/1.1" 502 560 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36"
```
에러가남