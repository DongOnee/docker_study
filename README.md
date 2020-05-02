# ver 0.2
## 목적
- docker-compose.yml 학습 [참고자료](https://jistol.github.io/docker/2017/09/19/docker-compose-tomcat-clustering/)
- nginx, tomcat 활용

## 변경점
1. docker-compose.yml 추가
    - 이로 인해 쓸때없는 쉘 스크립트를 사용할 필요가 없어진다
    - 빌드 : docker-compose up -d --build
    - 종료 : docker-compose down
2. dockerfile 들 폴더에서 꺼내기
3. logging 을 위한 폴더 추가

## 결과
```
2020/05/02 09:12:39 [alert] 6#6: 1024 worker_connections are not enough
2020/05/02 09:12:39 [error] 6#6: *1021 recv() failed (104: Connection reset by peer) while reading response header from upstream, client: 127.0.0.1, server: proxy_server, request: "GET / HTTP/1.0", upstream: "http://127.0.0.1:8080/", host: "127.0.0.1"
```
결과는 nginx/log/error.log 를 확인 하였다. 크롬에서는 `502 Bad Gateway` 결과가 나왔다.

# ver 0.1
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
