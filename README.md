# emacs.d
이맥스를 처음 사용하는 사람들을 위한 클로저 설정

## 사용하는 패키지들
- smex : M-x 했을 때 서제스트를 지원한다.
- paredit : Clojure/Lisp에서 에디팅 할때 괄호의 짝을 맞춰준다.
- clojure-mode : 클로저 들여쓰기와 문법 하이라이트등을 지원한다.
- projectile : 프로젝트에 파일 찾아 열기/검색/테스트 실행등을 지원한다. 
- rainbow-delimiters : Clojure/Lisp에서 괄호의 단계별로 다른 색으로 표시해서 가독성을 높여준다.
- idle-highlight-mode : 현재 커서가 있는 단어와 같은 단어들이 하이라이트 된다.
- flx-ido : ido 모드(Projectile에서 파일찾기등)에서 약어 검색을 지원한다. core.clj를 cre등으로 검색해도 나옴
- cider : Clojure 개발시 repl을 지원한다. 함수 선언으로 이동/자동 완성등의 플러그인도 repl이 실행되야 가능하다.
- ag : Projectile에서 빠른 검색을 지원하는 ag를 사용할수 있다.
- ac-cider : Cider repl과 연동해서 클로저 함수들에 대한 자동완성 및 문서를 제공한다.
- tabbar : 탭바를 지원한다.

## 기타 파일들
- Cask : 패키지 관리를 위한 파일
- theme/zenburn.el : zenburn 테마의 일부 색상을 변경했다.
- init.el : 이맥스 기본 설정 파일
- clojure.el : 클로저 관련 설정을 분리해놓은 파일
- tabbar.el : tabbar-mode의 설정을 분리해놓은 파일
- slamhound.el : 최신 repl에서 slamhound가 동작하지 않는 문제를 수정한 파일

## 사용법
### Cask 설치와 패키지 설치
프로젝트를 받고 기본 이맥스 설정 디렉토리를 백업해두고 ~/.emacs.d로 이름을 변경한다.
```
git clone https://github.com/eunmin/emacs.d.git
mv ~/.emacs.d ~/.emacs.d.org
mv ./emacs.d ~/.emacs.d
```
이맥스 패키지 관리자 툴인 Cask를 설치한다.
```
brew install cask
```
Projectile에서 Ag 검색을 지원하기 위해서 Ag를 설치한다.
```
brew install the_silver_searcher
```
패키지들을 설치하기 위해서 아래와 같은 커맨드를 입력한다.
```
cask install
```

### Cider와 Slamhound를 위한 Leiningen 설정
`~/.lein/profiles.clj`에 다음과 같이 Cider 플러그인과 slamhound 관련 설정을 추가한다.
```
{:user {:plugins [[cider/cider-nrepl "0.9.0-SNAPSHOT"]
        :dependencies [[slamhound "1.5.5"]]
        :aliases {"slamhound" ["run" "-m" "slam.hound"]}}}
```
## 주요 단축키
단축키               | 설명
---------------------|------------------------------------------------------------
<kbd>C-c p f</kbd>   | 프로젝트에서 파일을 연다.
<kbd>M-[</kbd>       | 탭 왼쪽으로 이동
<kbd>M-]</kbd>       | 탭 오른쪽으로 이동
