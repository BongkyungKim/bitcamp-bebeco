# 20220818

### Iterator

- 컬렉션에 저장된 데이터를 접근하는데 사용되는 인터페이스

- iterator는 1회용이라 다쓰고나면 다시 얻어와야 한다.

- Enumeration은 Iterator의 구버젼

- ListIterator는 Iterator의 접근성을 향상시킨 것

- Map에는 iterator()가 없다.

### Comparator와 Comparable

- 객체 정렬에 필요한 메서드를 정의한 인터페이스

- Comparable : 기본 정렬기준을 구현하는데 사용

- Comparator : 기본 정렬기준 외에 다른 기준으로 정렬하고자할 때 사용

```java

public interface Comparator {
  int compare(Object o1, Object o2); // o1, o2 두 객체를 비교
  boolean equals(Object obj); // equals를 오버라이딩하라는 뜻
}

public interface Comparable {
  int compareTo(Object o); // 주어진 객체(o)를 자신(this)과 비교
}
```

<br/>

# 20220822

### HashSet

- 순서X
- 중복X

- Set인터페이스를 구현한 인터페이스는 대표적으로 HashSet, TreeSet

> HashSet
    
    - Set인터페이스를 구현한 대표적인 컬렉션 클래스
    - 순서를 유지하려면, LinkedHashSet클래스를 사용하면 된다.

> TreeSet
    
    - 범위 검색(from~to)과 정렬에 유리한 컬렉션 클래스
    - HashSet보다 데이터 추가, 삭제에 시간이 더 걸린다.

- HashSet은 객체를 저장하기전에 기존에 같은 객체가 있는지 확인해서 같은 객체가 없으면 저장하고, 있으면 저장하지 않는다.

- boolean add(Object o)는 저장할 객체의 equals()와 hashCode()를 호출 => equals()와 hashCode()가 오버라이딩 되어 있어야 한다.


### TreeSet

- 이진 탐색 트리(binary search tree)로 구현한다.
- 범위 탐색(from~to)과 정렬에 유리
- 이진 트리는 모든 노드가 최대 2개(0~2)의 하위 노드를 갖는다.
- 각 요소(node)가 나무(tree)형태로 연결(LinkedList의 변형)

```java
class TreeNode {
  TreeNode left; // 왼쪽 자식노드
  Object element; // 저장할 객체
  TreeNode right; // 오른쪽 자식노드
}
```
- 이진 탐색 트리(binary search tree)

    - 부모보다 작은 값은 왼쪽, 큰 값은 오른쪽에 저장한다.

    - 데이터가 많아질 수록 추가, 삭제에 시간이 더 걸린다.(비교 횟수 증가)

- `HashSet`은 equals(), hashCode()로 비교, `TreeSet`은 compare()를 호출해서 비교

- TreeSet()은 정렬하는 코드가 없어도 정렬이 되어 출력된다.

  => 저장할 때 이미 정렬하기 때문이다.

- 트리 순회(tree traverasl)

  - 이진 트리의 모든 노드를 한번씩 읽는 것.

  - 전위, 중위, 후위 순회법이 있으며, 중위 순회하면 오름차순으로 정렬된다.

**장점**

범위 검색과 정렬에 유리하다.

**단점**

Tree가 커질수록 추가 삭제에 시간이 많이 걸린다.