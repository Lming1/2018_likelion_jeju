# Musics / Movies / Artists

1. 위에 것들중에 하나로 컨트롤러를 만든다.
  ```shell
  $ rails g controller [컨트롤러이름]
  ```
2. 컨트롤러에 액션을 정의한다. (music_1, music_2, index)
  ```ruby
  def index
  end
  
  def music_1
  end
  
  def music_2
  end
  ...
  ```
3. 대응하는 뷰파일을 만들고 작성한다.
4. 라우팅을 한다. (/musics/1, /musics/2, /musics)
  ```ruby
  ...
  get 'musics' => '???#???'
  get 'musics/1' => '???#???'
  get 'musics/2' => '???#???'
...
```