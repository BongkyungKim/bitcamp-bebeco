> 리소스

- 동적 리소스 : 

  프로그램이 생성하는 리소스

  스트리밍

- 정적 리소스 : 

  파일 형태로 되어 있어서 바뀌지 않는 것

  이미지, *.js, *.css, *.html

<br/>

# Ch.2 - 7 HTTP 요청과 응답 - 이론

-  프로토콜(protocol)

    서로 간의 통신을 위한 약속, 규칙

    주고 받을 데이터에 대한 형식을 정희한 것

- HTTP(Hyper Text Transfer Protocol)

    텍스트 기반의 프로토콜 -> 단순하고 읽기 쉽다.

    상태를 유지하지 않는다.(stateless) -> 클라이언트 정보 저장X

    \* statelsee 보완하기위해 쿠키 ・ 세션 사용

    확장 가능 -> 커스텀 헤더(header) 추가 기능

- HTTP 응답 메시지

    | 상태코드 | 의미 |
    |:-----:|:-------------:|
    | 1XX | Informational |
    | 2XX | Success |
    | 3XX | Redirect |
    | 4XX | Client Error |
    | 5XX | Server Error |

    ▶︎ 1XX : Client와 Server간의 정보교환이 목적

- HTTP 메서드 - GET, POST

  `GET`
  
  서버의 리소스를 가져오기 위해 설계

  Query String을 통해 추가데이터 전달(소용량)

  URL에 데이터 노출되므로 보안에 취약

  데이터 공유에 유리

  ex) 검색엔진 검색단어 전송에 이용 ...

  `POST`

  서버에 데이터를 올리기 위해 설계

  전송 데이터 크기의 제한이 없다(대용량)

  데이터를 요청 메시지의 body에 담아 전송

  보안에 유리, 데이터 공유에는 불리

  ex) 게시판 글쓰기, 회원가입, 로그인 ...

`HTTPS` = HTTP + TLS

TLS : 암호화

<br/>

### 크롬 확장프로그램

- Tabbed Postman 설치

<br/>

# Ch.2 - 8 텍스트와 바이너리, MIME, Base64

# Ch.2 - 9 관심사의 분리와 MVC 패턴 - 이론

# Ch.2 - 10 관심사의 분리와 MVC 패턴 - 실습

- servlet-context.xml : 웹 관련 설정 파일

# Ch.2 - 11 관심사의 분리와 MVC 패턴 - 원리(1)

---

### 찾아보기

- Enumeration 완료
- 익명클래스
- EL(Expression Language)
- isValid()

