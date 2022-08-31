
### 데이터베이스

- 데이터베이스 생성

```sql
create database 데이터베이스명 옵션들...;
```

- 데이터베이스 삭제

```sql
drop database 데이터베이스명;
```

- 데이터베이스 변경

```sql
alter database 데이터베이스명 옵션들...;
```

### 테이블

- 테이블 생성

```sql
create table 테이블명 (
  컬럼명 타입 NULL여부 옵션,
  컬럼명 타입 NULL여부 옵션,
  ...
  컬럼명 타입 NULL여부 옵션
);
```

```sql
// 예)
  create table test01 (
    name varchar(50) not null,
    kor int not null,
    eng int not null,
    math int not null,
    sum int not null,
    aver float not null
  );
```

- 테이블 정보 보기

```sql
desc 테이블명;
```

- 테이블 삭제하기

```sql
drop table 테이블명;
```

### 테이블 컬럼 옵션

- `null` 허용 : 데이터를 입력하지 않아도 된다.

- `not null` : 데이터를 입력하지 않으면 입력/변경 거절

- `기본값 지정하기`

  입력 값을 생략하면 해당 컬럼에 기본값이 대신 입력된다.

  컬럼 값을 생략하면 default 옵션으로 지정한 값이 사용된다.

  컬럼 값을 null로 지정하면 기본 값이 사용되지 않는다.

```sql
create table test1(
    no int not null,
    name varchar(20) default 'noname',
    age int default 20
  );
```

### 컬럼 타입

- `int`

  4바이트 크기의 정수 값 저장

  기타 tinyint(1바이트), smallint(2바이트), mediumint(3바이트), bigint(8바이트)

- `float`

  부동소수점 저장

- `numeric = decimal`

  전체 자릿수와 소수점 이하의 자릿수를 정밀하게 지정할 수 있다.

  `numeric(n,e)` : 전체 n 자릿수 중에서 소수점은 e 자릿수다.

    ex) numeric(10,2) : 12345678.12
  
  `numeric` : numeric(10,0) 과 같다.

- `char(n)`

  최대 n개의 문자를 저장

  고정 크기를 갖는다.

  메모리 크기가 고정되어서 검색할 때 빠르다.

- `varchar(n)`

  최대 n개의 문자를 저장

  가변 크기를 갖는다.

  메모리 크기가 가변적이라서 데이터 위치를 찾을 때 시간이 오래 걸린다.

- `text(65535), mediumtext(약 1.6MB), longtext(약 2GB)`

  긴 텍스트를 저장할 때 사용하는 컬럼 타입이다.

  오라클의 경우 long 타입과 CLOB(character large object) 타입이 있다.

- `date`

  날짜 정보를 저장할 때 사용한다.

  년, 월, 일 정보를 저장한다.

  오라클의 경우 날짜 뿐만 아니라 시간 정보도 저장한다.

- `time`

  시간 정보를 저장할 때 사용한다.

  시, 분, 초 정보를 저장한다.

- `datetime`

  날짜와 시간 정보를 함께 저장할 때 사용된다.

- `boolean`

  보통 true, false를 의미하는 값을 저장할 때는 정수 1 또는 0으로 표현한다.

  또는 문자로 Y 또는 N으로 표현하기도 한다.

  실제 컬럼을 생성할 때 `tinyint(1)` 로 설정한다.

  숫자 컬럼인 경우 값을 설정할 때 문자로 표현할 수 있다. => ?
  
  즉 문자열을 숫자로 바꿀 수 있으면 된다. => ?

  ### 키 컬럼 지정

- `key` column : 데이터를 구분할 때 사용하는 값

<br/>

### `key` vs `candidate key`

- `key` : 데이터를 구분할 때 사용하는 컬럼들의 집합

- `candidate key`(후보키 = 최소키)

  `key`들 중에서 최소 항목으로 줄인 키

<br/>

### `alternate key` vs `primary key`

- `primary key`(주 키)

  `candidate key`중에서 DBMS 관리자가 사용하기로 결정한 키

  주 키로 선택되지 않은 모든 candidate key는 alternate key가 된다.

- `alternate key`(대안 키)

  `candidate key`중에서 `primary key`로 선택된 키를 제외한 나머지 키.

  비록 primary key는 아니지만, primary key처럼 데이터를 구분하는 용도

<br/>

### `artificial key`(인공키)

- Primary key로 사용하기에 적절한 컬럼을 찾을 수 없는 경우

  예) 게시글 : 제목, 내용, 작성자, 등록일, 조회수

  이런 경우에 key로 사용할 컬럼을 추가한다.

  보통 일련번호를 저장할 정수 타입의 컬럼을 추가한다.

  예) 게시글 : 게시글 번호

- 대부분의 SNS 서비스들은 일련의 번호를 primary key 사용한다.

<br/>

### `primary key`

- 테이블의 데이터를 구분할 때 사용하는 컬럼들이다.

- PK 컬럼을 지정하지 않으면 데이터가 중복될 수 있다.

- 지정하는 형식

  컬럼명 타입 primary key

- 두 개 이상의 컬럼을 묶어서 PK로 선언하는 형식

  constraint 제약조건이름 primary key (컬럼명, 컬럼명, ...)

  제약조건이름은 생략가능

  제약조건이름을 지정하지 않으면 나중에 제약조건을 찾기 힘들다.

- 여러 개의 컬럼을 묶어서 PK로 사용하면 데이터를 다루기가 불편하다. 그래서 임의의 값을 저장하는 컬럼을 만들어 PK로 사용한다. `(인공 키의 예!)`

- `unique`

  PK는 아니지만 PK처럼 중복되어서는 안되는 컬럼을 저장할 때 사용한다.

  PK를 대신해서 사용할 수 있는 key라고 해서 `대안키(alternate key)`라고 부른다.

  즉 대안키는 DBMS에서 unique 컬럼으로 지정한다.

<br/>

### `unique` = `alternate key`(대안키)

<br/>

### `index`

- 검색 조건으로 사용되는 컬럼인 경우 따로 정렬해 두면 데이터를 찾을 때 빨리 찾을 수 있다.

- 특정 컬럼의 값을 A-Z 또는 Z-A로 정렬시키는 문법이 인덱스이다.

- DBMS는 해당 컬럼의 값으로 정렬한 데이터 정보를 별도의 파일로 생성한다.

- 책 맨 뒤에 색인표와 같다.

- 인덱스로 지정된 컬럼의 값이 추가/변경/삭데 될 때 인덱스 정보도 갱신한다.

- 따라서 변경이 자주 발생하는 테이블에 대해 인덱스 컬럼을 지정하면 인덱스 정보를 자주 갱신해야 하기 때문에 속도가 느려지는 문제가 있다.

- 대신 조회 속도는 빠르다.

<br/>

### 컬럼 값 자동 추가

- 숫자 타입이 `PK 컬럼` 또는 `unique 컬럼`인 경우 값을 1씩 자동 증가시킬 수 있다.

- 즉 데이터를 입력할 때 해당 컬럼의 값을 넣지 않아도 자동으로 증가된다.

- 단 삭제를 통해 중간에 비어있는 번호는 다시 채우지 않는다.
  즉 증가된 번호는 계속 앞으로 증가할 뿐이다.

```sql
alter table test1
  modify column no int not null auto_increment; /* 아직 no가 pk가 아니기 때문에 오류*/
```

```sql
alter table test1
  add constraint primary key (no); /* 일단 no를 pk로 지정한다.*/

alter table test1
  add constraint unique (no); /* no를 unique로 지정해도 한다.*/

alter table test1
  modify column no int not null auto_increment; /* 그런 후 auto_increment를 지정한다.*/
```

  다른 DBMS의 경우 입력 오류가 발생하더라도 번호는 자동 증가하기 때문에 다음 값을 입력할 때는 증가된 값이 들어간다.

  그러나 MySQL(MariaDB)는 증가되지 않는다.

<br/>

### 뷰(view)

- 조회 결과를 테이블처럼 사용하는 문법

- `select` 문장이 복잡할 때 뷰로 정의해 놓고 사용하면 편리하다.

- view가 참조하는 테이블에 데이터를 입력한 후 view를 조회하면?

  => 새로 추가된 컬럼이 함께 조회된다.

- 뷰를 조회할 때 마다 매번 `select 문장`을 실행한다.

  => 미리 결과를 만들어 놓는 것이 아니다.
s
- 일종의 조회 함수 역할을 한다.

- 복잡한 조회를 가상의 테이블로 표현할 수 있어 SQL문이 간결해진다.

<br/>

### 뷰 삭제

```sql
drop view worker;
```
<br/>

### 제약 조건 조회

- 테이블의 제약 조건 조회

```sql
select table_name, constraint_name, constraint_type
from table_constraints;
```

- 테이블의 키 컬럼 정보 조회

```sql
select table_name, column_name


