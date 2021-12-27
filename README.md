# snackbar_builder
플러터 스낵바 Builder 위젯 사용

## 실행 화면
![image](https://user-images.githubusercontent.com/77111523/139223235-80005b26-ea0a-42ef-9578-4eafb73fda4d.png)

## 설명
SnackBar 사용법
- 플러터 공식 문서를 보면 `Scaffold.of(context).showSnackBar()` 를 call해야 한다고 나와있음
- 다시 말하자면, 반드시 `Scaffold.of()` 메서드를 통해서 Scaffold 위치를 참조한 후, 그 다음에 `showSnackBar()`라는 메서드 내에서 SnackBar를 구현해야 한다는 의미임.
- SnackBar는 결국 Scaffold 위에서 그려져야 하기 때문에 플러터가 Scaffold의 정확한 context를 참조해서 그곳에 SnackBar를 그릴 수 있도록 알려주어야 함.
         
   
`Scaffold.of(context)` method
- of에 대한 해석 → "현재 주어진 context에서 위로 올라가면서 가장 가까운 Scaffold를 찾아서 반환하라."
- 즉, `Something.of(context)` 메서드는 항상 위로 거슬러 올라가면서 가장 가까운 Something을 찾아서 반환하라는 뜻
- `Theme.of(context)`라는 메서드도 있음. 얘도 마찬가지
      
   
에러 해결책 -> `Builder` 위젯 사용
- Builder 위젯의 핵심적인 역할은 지금까지 사용했던 context가 무엇이었던 간에 다 무시하고 **새로운 context로 새로운 위젯을 만들라는 것**임.
- 그래서 Builder 위젯 밑에 존재하는 `Scaffold.of()` 메서드가 더 이상 MyPage 위젯의 context가 아니라 **Builder 위젯의 context를 사용하게 만드는 것**임.
- 결과적으로, `Scaffold.of()`메서드가 위젯 트리 상에서 거슬러 올라가면서 Scaffold 위젯을 찾게되는 것임.
