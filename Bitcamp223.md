# 20220818

### 프로그램 실행과 경로
<br/>

1. 현재 경로에서 찾는다.

    -> Unix의 경우 현재 경로를 명시해야 한다.
    
    ex) ./a.exe

2. OS의 PATH 환경 변수에 등록된 경로를 순서대로 찾는다.

> CLI

  - echo %PATH% : 운영체제에 패스라고 입력된 값을 찾아서 보여줌
  - echo $PATH : "
  - 경로와 경로사이 윈도우는 ;, 맥은 :
  - 현재폴더 : .
  - 상위폴더 : ..

<br/>

### 프로그램 실행 - Windows
<br/>

- *.com, *.exe : 기계어 파일
- *.bat : OS가 이해하는 스크립트로 작성된 명령어 들어있는 파일 <= 컴파일 불필요

<br/>

### 프로그램 실행 - Unix
<br/>

- $a : PATH 환경 변수에 등록된 경로 따라가며 찾는다.
- $./a : 현재 폴더에 있는 파일을 실행하고 싶다면 경로를 명시하라~
- Unix 에서는 실행 파일에 대해 사용자가 실행 권한을 가지고 있어야만 실행할 수 있다.

  `$ls -al` : rw-r--r-- a
  
  rw- => user 권한, r-- => group 권한, r-- => other 권한, a => 실행 파일명

  실행 파일에 대해 사용자에게 실행 권한을 부여하지 않았기 때문에 실행할 수 없다.

- 실행 권한 부여
  
  ` $chmod 744 a` : rwxr--r-- a
  
  7(111) => rwx, 4(100) => r--, 4(100) => r--

  x : 실행 권한

<br/>

### ShellScript와 기타 Script 실행 - Windows
<br/>

> shell script

  OS 내부의 인터프리터를 사용해서 스크립트 실행

> 기타 스크립트

  node hello.js

<br/>

### nodejs 설치

- brew install node

<br/>

### shell script와 기타 script 실행 - Unix
<br/>

> shell script
  
  a.sh

  `방법 1) $zsh a.sh`
  
  zsh : 스크립트 인터프리터
  
  a.sh : 스크립트 파일

> shell script 자동 실행
  
  a.sh 
  
  `=> #!/bin/zsh` : 이 파일을 실행시킬 shell script 인터프리터를 설정한다.

  `=> $chmod 744 a.sh` : 스크립트 파일에 대해 실행 권란을 부여한다.

  `=> $./a.sh` : 쉘스크립트 파일 실행


<br/>

- 조회 : `ls -l /bin/*sh`

<br/>

### 041. Client / Server 리팩토링
<br/>

<br/>

### List와 Set
<br/>

- List

  중복 허용

- Set
  
  중복 놉

  <br/>

### HashSet
<br/>

<br/>

### HashSet vs HashMap
<br/>

- HashMap
  Iterator 얻고서 다시 put 놉

- HashTable
  null이 들어가서는 안 될 경우 테이블

- 차이점

  HashSet : 값을 꺼낼 때 임의의 순서로 꺼낸다. 특정 객체를 꺼낼 수가 없다

  HashMap : key를 가지고 특정 객체를 꺼낼 수 있다.

### basic.ex08
<br/>

# 20220819

### quiz.ex01.Test30
<br/>

<br/>

### Proxy 패턴을 이용한 네트워킹 코드 캡슐화

- proxy 설계 패턴을 활용하는 방법

  1. Proxy 패턴

  Client => [call] => 통신 대행자(통신코드를 감춘다) => [통신] Server
  Client <= [리턴] <= 통신 대행자(통신코드를 감춘다) <= [결과] Server


- 캡슐화 : 

  복잡한 코드가 안 보이도록 클래스 안의 메서드로 감춘다
  
  해당 기능이 필요한 경우 간단히 메서드 호출로 처리

<br/>

### Stateful에서 Stateless로 변경하기
<br/>

- Stateful 
  
  일상의 예) 은행업무

- Stateless

  일상의 예) ARS 인증, 114 전화번호 안내

<br/>

# 20220822

### 원격 메서드 호출의 진화과정
<br/>

> 1. RPC

- 이미지 삽입

> 2. RMI

- 이미지 삽입

> 3. EJB

- 이미지 삽입

> 4. CORBA

- 이미지 삽입

> 5. Web Service

- 이미지 삽입

> 6. RESTful API

- 이미지 삽입

<br/>

### SpringBoot 와 REST API
<br/>

- 이미지 삽입

### Stateful 통신(ver.043) VS Stateless 통신(ver.044)

- 이미지 삽입

### 045. Thread를 이용한 멀티 태스킹 구현하기: 동시 요청 처리 구현

- Thread로 멀티 태스킹을 구현하는 방법
- 멀티 태스킹의 이해
- 멀티 프로세스와 멀티 스레드의 구동 원리 이해

### ScrverSocket

### DNS (Domain Name System)

- IP주소에 대한 텍스트 이름을 알려주는 서버

### net.ex01

<br/>

# 20220823

### porxy 서버
<br/>

`Web Browser` => [요청] => `Proxy Server` => [요청] => `Web Server`
`Web Browser` <= [응답] <= `Proxy Server` <= [응답] <= `Web Server`

- Proxy Server의 기능

  1. 필터링 -> 접극 제어
  2. 로깅(logging) -> 사용 기록
  3. 캐싱(caching) -> 임시 보관

<br/>

### OS와 App. 그리고 API 호출

- Application은 결국 OS의 메서드 호출 => 실행시 OS의 영향을 받는다.

### Printer 출력 과정

- 이미지 삽입

### Networking 출력

- 이미지 삽입

### localhost loop back

- 이미지 삽입

- localhost 접속은 LanCard 밖을 나가지 않는다.

### 버퍼 사용시 입출력

- 이미지 삽입

- BufferedOutputStream 버퍼가 꽉 찰 때 출력한다.

- flush()를 실행하여 출력을 명령한다.

 ### TCP/IP

 - 이미지 삽입

 ### stateful 1

 - 이미지 삽입

### stateful 2 : 서버측에 계산 결과 유지

- result : 클라이언트 연결이 유지되는 동안에는 result변수에 

### stateful 3

- 이미지 삽입

### Stateless 1

- 이미지 삽입

### Stateless 2 : 클라이언트 구분하기

- CollaborationDiagram => SequenceDiag. => 시간 흐름에 따라 실행과정을 표현하기에 적합

- 이미지 삽입

- Stateless2는 클라이언트를 구분할 수 없다.

<br/>

# 20220824

### Stateless 3 : 멀티스레드

- 이미지 삽입

### Conection-Oriented VS Conectionless

- 이미지 삽입

### URI -> URL, URN

- URL

ex) http://hong:1111@www.naver.com:80/cafe/list?no=20&sort=a

`http` : 프로토콜 (schema)

`hong` : 사용자ID (USER) -> 생략

`1111` : 암호 (password) -> 생략

`wwww.naver.com` : 서버주소 (host)

`80` : 포트번호 (port)

`cafe/list` : 자원의 경로 (path)

`no=20&sort=a` : QueryString

- URN

ex) example : animal:ferret:nose

<br/>

### 정적자원과 동적자원

- Static Resources

- Dynamic Resources

### cygwin 설치

<br/>

### 멀티 태스킹 - 여러 작업을 동시 수행

- 멀티 프로세싱

  프로세스를 복제(fork)해서 멀티 태스킹 수행

  Code가 중복로딩 => 단점 : 메모리 많이 사용

  Heap 중복생성 => 단점 : 메모리 많이 사용

  프로세스 종료

  => 다른 프로세스로 계속 실행

- 멀티 스레딩

  Code와 Heap 메모리를 여러 스레드가 공유

  => 멀티 프로세싱 방식에 비해 메모리 낭비가 적다.
  
  프로세스 종료시

  => 종속된 스레드도 모두 자동 종료


### VM(Virtual Machine)

- 가상머신은 실제 컴퓨터처럼 H/W 자원을 사용 

  => 자원 낭비가 심하다.

Host OS

Guest OS

### Docker

- App을 실행하는데 필요한 H/W 자원만 사용

- VM처럼 별도의 컴퓨터에서 실행하는 것처럼 동작

### 멀티 태스킹의 실체

- 이미지 삽입

<br/>

### 프로세스, 스레드 멀티태스킹

- cpu는 프로세스와 스레드를 동일하게 간주하여 동시 실행한다.

- cpu가 프로세스나 스레드의 명령을 실행할 때, cpu 실행을 분배하는 전략?
  
  -> cpu를 어떤식으로 분배해서 명령을 처리할 것인가?

  => `"cpu Scheduling"`

  1. Windows -> Round Robin 방식

      => 프로세스와 스레드에 동일 시간 분배

  2. Unix -> Priority + Aging 방식

      Priority => 우선순위가 높은 프로세스나 스레드를 더많이 실행

      Aging => 우선순위가 낮아 실행이 밀릴 때 마다 우선순위를 높여서 다음 번엔 실행될 수 있게 하는 것

### Context Switching

- Context => 실행 상태 정보

- cpu가 다른(프로세스 ・ 스레드)를 실행하기 위해 현재 (프로세스 ・ 스레드)의 `실행 상태`를 저장하고 실행한 (프로세스 ・ 스레드)의 `실행 상태`를 로딩하는 것

  1. 실행 상태 => 여기까지 실행했다

  2. 실행 상태 => 어디서부터 실행하나?

- cpu 스케쥴링 시간을 너무 짧게 잡으면 명령을 실행하는 시간보다 Context Switching에 더 많은 시간을 소비하는 문제가 발생한다

  => 너무 간극을 크게 잡으면 동시 실행 효과가 떨어진다.

  <br/>

  # 20220825

  ### JVM과 스레드

- 이미지 삽입

  ### JVM의 스레드 계층도

- 이미지 삽입

### 스레드 정의 1

- `start()`

  별도의 실행흐름을 만든 후 run()을 호출한다. 그리고 즉시 리턴한다.

  => run() 실행이 끝날 때 까지 기다리지 않는다.

  => "비동기 실행"

### 스레드 정의 2

<br/>

### 진도

- java-lang.concurrent.ex2~3
- java-lang.concurrent.Exam110~
- app-server.ServerX => 연습

### functional interface

추상메서드 한개를 지칭하는 메서드 = 펑셔널메소드

<br/>

# 20220826

### 메인 스레드와 하위 스레드 종료

- 다른 스레드가 종료될 때까지

### 스레드의 생명주기(lifecycle)

- Running

  cpu를 받을 수 있는 상태

  cpu 스케쥴링 대상

- Not Runnable

  cpu를 안 받는 상태

  cpu 스케쥴링 대상에서 제외

### 스레드와 프로세스의 실행 : 실체와 이해

- 이미지 삽입

### cpu Racing(cpu 쟁탈전)

- 여러 프로세스나 스레드들이 cpu 사용권을 놓고 경쟁하는 것

  => 실체 : OS가 cpu 스케쥴링 정책에 따라 결정한다.

- 이미지 삽입

### 같은 메모리를 여러 스레드가 동시에 접근할 때 문제점

- `Critical Section(=Critical Region)`

  여러 스레드가 동시에 코드를 실행할 때 문제가 발생하는 코드 블록

  어떤 코드에 문제가 발생하는가? => 같은 메모리(변수)를 동시에 접근하여 값을 변경 할 때

  즉 => 다른 스레드가 쓴 값을 덮어 쓸 수 있다.

  `해결책` 
  
  => 한 번에 한 스레드 만이 접근하도록 제한하면 된다.

  => Mutual Exclusion(상호배제) - Mutex

### 상호배제 기법

- Semaphore(n)

  n개 까지만 혀용 나머지는 배제

  ex)
  
  Semaphore(3) => 3개 까지는 접근 가능
  
  Semaphore(1) => Mutex

- Java에서는 Mutex를 문법으로 지원한다.

### 여러 스레드 동시 실행 비교

- 이미지 삽입

### 서버와 멀티스레드, 클라이언트 관계

- 이미지 삽입

### DBMS의 등장

- 이미지 삽입

- 데이터를 파일에 I/O

- 여러 클라이언트에 동시 요청 처리 - 서버 역할

- 접속자 인증 및 권한 검사

- 데이터 무결성(integrity) 지원 

- 데이터 공유

### Database 와 DBMS

- 이미지 삽입

#### DBMS와 SQL

- 이미지 삽입

### MariaDB Server와 Client

- 이미지 삽입

### MariaDB 설치

- 완료

### 진도

- java-lang.concurrent.ex03.Exam310~ex05

<br/>

# 20220829

### 파일 관리자 등장

- 이미지 삽입 

### MariaDB Server와 Client

### 사용자 등록, Database 생성, 권한 설정

- 이미지 삽입

- 사용자 등록

```sql
create user 'study'@'localhost' identified by '1111';
```

`study` : 사용자ID

- 데이터베이스 생성

```sql
create database studydb character set utf8 collate utf8_general_ci;
```

`utf8_general_ci` : 정렬 기준

- 사용자가 접근한 수 있는 데이터베이스 권한 부여

```sql
grant all on studydb.* to 'study'@'localhost';
```

`all` : 권한

`*` :  항목

### SQL

- 이미지 삽입

### SQL : DDL

- 테이블 정의

```sql
create table test01 (
  name varchar(50) not null
  .
  .
  .
);
```

- 이미지

### table, row, column

- row = record = tuple

- column = attribute

- table = entity

### 진도

- Exam01.sql - unique

<br/>

# 20220830

### key - 데이터를 구분하는 식별자

- 이미지

1. `key`

    이름, 이메일

    이름, 학교, 우편번호

    이메일

    이름, 주민번호

    주민번호

    이름, 주소

    이름, 휴대폰

    휴대폰, 우편번호

    **데이터를 식별할 때 사용할 수 있는 컬럼들의 값**

2. `candidate key`(후보키 = 최소키)

    이메일

    주민번호

    휴대폰

    이름, 주소 => 한 개의 컬럼으로 된 key가 많으니까 두 개 이상의 컬럼을 key로 사용할 필요가 없다. 

    **key중에서 최소의 컬럼으로 줄인 key**

3. `primary key`(주키)

    이메일

    {
    주민번호
    
    휴대폰

    } : `alternate key`(대안키) => `unique` 컬럼으로 지정된다.

    **후보키 중에서 DB관리자가 선정한 키**

4. `artificial key`(인공키)

    학생번호

    {
    이메일

    휴대폰
    } : 변경할 수 있으려면 pk가 되어서는 안된다.

    주민번호

    => 변경할 수 있으려면 pk가 되어선 안된다.
    
    => 법에 따라 사용불가!

     
    
    **pk로 사용하기에 적절한 key가 없다면 임의의 컬럼을 만들어 pk로 지정한다. 보통 '얼련번호' 컬럼**

### DML

### DBMS서버와 다중 클라이언트 접속

- 이미지 삽입

### commit / rollback -> 트랜잭션을 다룬다.

- 이미지 삽입

### selection 과 projection

- 이미지 삽입

- select * from test1;

  test1 : 테이블명

- select no, name from test1;

  no, name : 컬럼명

- 특정 조건의 데이터를 선택 : selection

- 결과로 추출할 컬럼을 지정 : projection

```sql
select no, name // <= projection 대상
from test1
where no > 10;  // <= selection 조건
```

### 진도

- eomcs-docs.sql.Exam01 완료
- eomcs-docs.sql.Exam02 완료
- eomcs-docs.sql.Exam03 ~ where까지

# 20220831

### DBMS와 파일저장

- 이미지 삽입

### DBMS에 파일을 저장하는 사례

- 이미지 삽입

### 그림 --[변환]--> 텍스트

### File System ------> 파일 정보를 다루는 시스템

### File System 과 UI

### File System 과 접근 도구들

### Foreign key

### 예제 ER Diag.

### 진도

- eomcs-docs.sql.Exam03 and,or 연산자 ~
- eomcs-docs.sql.Exam04 
- eomcs-docs.sql.Exam05
- 서브쿼리, join 찾아보기

# 20220901

### 

sha2('****', 224) : 단방향 암호~

### Join ----> 여러 테이블에 분산 저장된 데이터를 한 개의 데이터로 모으는 것

`cross join`=`cartesian join` : 의미 없는 조인

`inner join` : 일치하는 데이터가 있는 경우만 조인


### select

```sql
select all loc from room;
```

`all` : 생략가능

### select : order by

```sql
select 컬럼, 컬럼, ... // 3
from 테이블 // 1
order by 컬럼 asc ・ desc, 컬럼 asc ・ desc, ... // 2
```

### select : alias

```sql
select 컬럼명 as 별명, 식 as 별명
```

`as` : 생략가능

`별명` : 별명이 있을 경우 컬럼을 추출할 때 별명을 사용해야 한다.

### select : union 과 union all

- 두 개의 질의 결과를 한 개의 결과로 합치는 것

`union` : 합집합, 중복제거

`union all` : 합집합, 중복제거 안 함

### select : 차집합

- Oracle은 MINUS 지원, MySQL은 지원 안 함

- 같은 타입, 갯수도 같아야 함

### select : 교집함

- Oracle은 INTERSECT 지원, MySQL은 지원 안 함

결과 데이터를 선택 하는 셀렉션

컬럼 선택 프로젝션

### group by ~ having ~



### 진도

- eomcs-docs.sql.Exam06
- eomcs-docs.sql.Exam07_1
- eomcs-docs.sql.Exam07_2
- eomcs-docs.sql.Exam07_3
- eomcs-docs.sql.Exam07_4
- eomcs-docs.sql.Exam07_5 ~ 177라인 확인필요
- eomcs-docs.sql.Exam07_7

<br/>

# 20220902

### DB 모델링

### key

### DB 모델링 : 데이터 분석 --> 구조화 --> 데이터 중복 제거

`데이터 중복 제거` : 일관성, 무결성

- 논리 모델링

  개념 모델링

  자연어로 작성

- 물리 모델링

  DBMS에 맞춰서 논리 모델링을 변경

  가이드 라인에 따라 테이블명과 컬렁명 작성

### DB 도델링 절차

1. 업무 분석(<-업무 전문가 ・ 비즈니스 도메인 전문가)

2. 데이터베이스 모델링(<-DB 설계자)

    1) 엔티티(테이블) 및 속성(컬럼) 식별

### 부모 - 자식 관계 : 식별관계 vs 비식별관계

- 이미지 삽입

`fk` : 다른 테이블의 데이터를 가리키기위해 pk를 저장하는 컬럼

### 다 대 다 관계의 해소

- 이미지 삽입

### 관계 차수

- 

### 포함 관계 vs 배타적 관계

# 20220905

### DBMS Native API 등장

- `Native API` : DBMS client 역할, App이 사용

- `DBMS API` : App에서 DBMS Server에게 SQL을 보낼 때 사용하는 메서드(함수)

- 이미지 삽입

### DBMS Native API

- 이미지 삽입

### DBMS Native API : DBMS Vendor 에서 제공

### ODBC API : DBMS API의 표준 규격

- `ODBC` : Open Database Connectivity

  ODBC API 표준 규격에 따라 API를 만들었다.

- 이미지 삽입

- API 규격이 같기 때문에 메서드 호출 코드도 동일하다.

  = DBMS마다 변경할 필요가 없다.

### Java에서 DBMS와 연결할 자바 전용 API가 필요!

- `Java DataBase Connectivity`(JDBC) :

  c/c++로 작성된 ODBC API를 호출할 Java API가 필요해서 Java DataBase Connectivity API 등장(JDBC)

### JDBC API : 자바에서 DBMS와 연결할 때 사용하는 객체의 호출 규격을 정의한 것

1. Type 1 드라이버

- `JDBC Driver` : 규격에 따라 클래스와 메서드를 구현

-  ODBC API를 호출하는 JDBC Driver를 `"Type 1 Driver"`로 부름

    = ODBC - JDBC Bridge 드라이버

- JRE에 기본으로 포함되어 있다

- ODBC Driver 호출

- Local에 ODBC Driver설치

- 이미지 삽입

<br/>

2. Type 2 드라이버 => DBMS Native Call 드라이버

- 규격에 따라 제작

- DBMS Native API 호출

- Local에 DBMS 전용 API 설치 필요

- DBMS Vender로 부터 다운로드 받아야 한다.


> Type1이든 Type2이든 둘 다 JDBC API 규격에 따라 작성되었기 때문에 사용법이 같다.<br/>
=> Java App을 변경할 필요가 없다.

<br/>

3. Type 3 드라이버 => 네트워크 드라이버

- DBMS를 바꾸더라도 Local쪽은 변경할 필요가 없다.

  => Remote1에서 변경하기 때문이다.

- Local에는 DBMS와 관련된 파일을 설치할 필요가 없다.

  => DBMS와 관련된 파일을 Remote1에 설치하기 때문이다.

- `Middleware` : 중간에서 제어하는 S/W

<br/>

4. Type 4 드라이버 => DBMS protocol Driver

- Local에 ODBC API/Native API를 설치해야 하는 문제를 해결 한 것

  => DBMS서버와 직접 통신

- DBMS Vender에 다운로드 해야 한다.

  => DBMS 변경되면 Driver도 변경해야 한다.

- Local에 DBMS관련 ODBC API나 Native API를 설치할 필요가 없다.

- JDBC Driver만 설치한다.

  => Pure Java

<br/>

### JDBC programming

1. JDBC Driver 다운로드
2. 프로젝트 classpath에 추가
3. JDBC API 규격에 따라 call

### JDBC programming 절차

1. java.sql.Driver 구현체 로딩

  `구현체 로딩` <= JDBC Driver에 대한 정보를 갖고 있다.

2. java.sql.DriverManager에 Driver 구현체 등록

3. DriverManager를 통해 java.sql.Connection 객체 얻기

  `java.sql.Connection` <= DBMS와의 연결정보 갖고 있다.

4. Connection을 통해 java.sql.Statement/PreparedStatement 객체를 준비시킨다.

  `java.sql.Statement/PreparedStatement` <= SQL을 서버에 보내고 응답을 받는 일을 한다.

5. Statement/PreparedStatement를 통해 java.sql.ResultSet을 얻는다.  

  `java.sql.ResultSet` <= DBMS의 select 결과를 한 개씩 가져오는 일을 한다.

### JDBC API의 기본 객체  

### JDBC API의 기본 객체 - 메서드 호출

### 클래스 로딩

1. new 클래스() <- 인스턴스를 생성 할 때

2. 클래스.스태틱필드 = 값; <- 스태틱 필드를 사용할 때 

3. 클래스.스태틱메서드() <- 스태틱 메서드를 호출할 때

4. Class.forName("패키지.클래스"); <- 명시적으로 로딩

  `패키저.클랙스` : fully-qualified class name (FQName = QName)

  ### 진도

- java-lang.jdbc.ex01.~Exam220

# 20220906

### JDBC API를 사용해 데이터를 처리 -> 캡슐화 -> DAO 클래스로 정의

### autocommit의 문제점

### 수동 commit

### 커넥션 객체를 공유하지 않는 경우

- 

### 커넥션 객체를 공유하는 경우

### 커넥션 재사용

### 진도 

- java-lang.jdbc.ex01
- java-lang.jdbc.ex02
- java-lang.jdbc.ex03
- java-lang.jdbc.ex04

# 20220907

- try-with-resources

  직접 적인 변수선언이 와야 -> 일반적인 문장이 오면 에러

  AutoClosealbe() 타입의 변수 선언이 와야 한다

### DBMS 도입 전

### 의존객체 생성 위치

# 20220908

### 의존객체 생성 및 Connection 생성

### 의존 객체 주입 방식 적용 전

### 프로젝트 수행 절차

5 ~ 6명 5팀 

1. 프로젝트 주제 선정 - 1

  - 프로젝트 비전 수집 

    현황 및 문제점 : 3 ~ 4줄

    해결 방안 및 이점 : 3 ~ 4줄
  
  - UI 프로토타입

    주요 요구사항에 대한 화면 정의

> 1명 이상의 조

> 팀당 2개 이상의 조

2. 요구사항 정의

  - 프로젝트 비전 개정

  - Use-case 모델링
    
    Actor 식별

    Use-case 식별

  - UI 프로토타입 상세화

3. DB설계

  - DB 모델링

    논리 모델

    물리 모델

  - 테이블 생성

  - 예제 데이터 준비

4. 구현

  - 프로젝트 생성 -> 구현 -> 테스트 -> 리뷰

    `구현 -> 테스트 : 반복작업`

> 1 ~ 4. : 10.26 까지

----

5. 클라우드 이전

- 클라우드 서버 준비 -> 설정 -> 실행

6. 발표

- 내용 발표

- 시연

<br/>

# 20220913

### app-client/server

```java
try (Socket socket = new Socket("localhost", 8888);
        DataInputStream in = new DataInputStream(socket.getInputStream());
        DataOutputStream out = new DataOutputStream(socket.getOutputStream())) {

	  // 데코레이터
      //      Scanner in = new Scanner(socket.getInputStream());
      //      PrintStream out = new PrintStream(socket.getOutputStream())) 
```
<br/>

# 20220914

### Application Server Architecture

- Thread Safe : 여러 스레드가 동시에 해당 코드를 실행하더라도 문제가 없는 경우.

# 20220915

### 웹 애플리케이션 서버 구조

- 이미지 첨부

### MiniWebServer 구조

- 이미지 첨부

### MiniWebServer 에서 요청처리 하기

- 이미지 첨부

<br/>

# 20220916

### URL 인코딩(percent encoding)

- URL을 표현할 때 다음에 해당하는 문자로 %00 형태로 변환해야 한다.

- URL에 QueryString으로 데이터를 보낸다면 다음의 문자는 %00 형태로 변환해야 한다.

1. 예약 문자(reserved characters)

  URL에서 특별한 의미로 사용되는 문자

  ! * ' ( ) ; : @ & = + $ , / ? # [ ]

  => 예약 문자를 그냥 일반적인 데이터로 보내고 싶다면 %00 형태로 인코딩 해야 한다.

2. 비예약 문자(unreserved characters)

  인코딩이 필요없다. URL에 그대로 사용가능.

  대문자(A-Z), 소문자(a-z), 숫자(0-9), - _ . ~

3. 그 외 문자

  %00 형태로 인코딩 해야 한다(웹브라우저와 서버가 자동으로 처리)

  => 개발자가 신경쓸 필요가 없다.

  => 그러나 직접 웹서버를 만든다면 URL 디코딩을 직접 처리해야 한다.

```
  값 --[인코딩(변환)]--> 7bit화 ---[ASCII코드(7bit)---> 7bit화 --[다코딩]--> 
```

### Command Design Pattern

- 명령어 처리를 한 메서드가 담당할 때 차라리 그 메서드를 별도 객체로 분리시키면 유지보수에 좋다

- 메서드를 객체화

- 이미지 첨부

<br/>

# 20220919

### 객체 생성 방법

```java
String s = new String();

String s2 = new String("Hello");

// CLass<?> : 클래스 정보
Class<?> classInfo = Class.forName("java.lang.String");

// newInstance() : 옛날 방식 deprecated
String x1 = classInfo.newInstance();
```

### 056. 웹서버와 애플리케이션 서버 기능 분리

### 057. Servlet/JSP 기술을 이용하여 웹 애플리케이션 개발하기

### 톰캣 서버 다운로드

### eclipseIDE와 Tomcat서버





