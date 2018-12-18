# logging-demo
You can look at http://localhost:8080/actuator/flyway to review the list of scripts.
This sample also enables the H2 console (at http://localhost:8080/h2-console) so that you can review the state of the database (the default jdbc url is jdbc:h2:mem:testdb).

## Swagger
http://localhost:8080/swagger-ui.html

## Secure rest API with Spring Security
https://www.baeldung.com/securing-a-restful-web-service-with-spring-security

https://octoperf.com/blog/2018/03/08/securing-rest-api-spring-security/

-- recommended
http://www.springboottutorial.com/securing-rest-services-with-spring-boot-starter-security

https://jaxenter.com/rest-api-spring-java-8-112289.html

https://www.boraji.com/spring-security-5-jdbc-based-authentication-example

https://grokonez.com/spring-framework/spring-security/use-spring-security-jdbc-authentication-mysql-spring-boot

curl -u user:ad3792c6-a3ea-4e76-89e5-163dd63991c5 http://localhost:8080/student/10001

▶ curl http://localhost:8080/student/10001
{"timestamp":"2018-11-21T15:26:51.884+0000","status":401,"error":"Unauthorized","message":"Unauthorized","path":"/student/10001"}%



```shell
>curl -u 'john.doe@bb.com':'123' http://localhost:8080/student/10001
>http --auth 'john.doe@bb.com':'123' http://localhost:8080/student/10001
{"id":10001,"name":"Ranga","passportNumber":"E1234567"}
```



```shell
>curl -u 'jane.doe@bb.com':'123' http://localhost:8080/student/10001
{"timestamp":"2018-11-21T15:27:31.221+0000","status":403,"error":"Forbidden","message":"Forbidden","path":"/student/10001"}%
```



