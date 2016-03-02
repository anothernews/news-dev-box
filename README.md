## News 프로젝트를 위한 개발을 위한 Virtual Machine

### Requirements
* Virtual Box: https://www.virtualbox.org/
* Vagrant: https://www.vagrantup.com/
위에 프로그램을 설치해주세요.

### 세팅하기
**개발환경 클론하기**
```{bash}
# Host
$ git clone https://github.com/news-project/news-dev-box.git
$ cd news-dev-box
$ git clone https://github.com/news-project/news.git
```
Github에서 `news-dev-box`(개발환경) 를 클론하고, 해당 디렉토리 안에 `news`(개발 소스) 프로젝트를 클론합니다.

**개발환경 설치하기**
```{bash}
# Host
/news-dev-box$ vagrant up
```
개발환경을 초기 세팅할 때 적당한 시간이 소요됩니다.

**개발환경 연결하기**
```{bash}
# Host
/news-dev-box$ vagrant ssh
```
vagrant 가상환경으로 연결됩니다.

**프로젝트 초기설정**
```{bash}
# Guest
vagrant$ cd /vagrant/news
vagrant$ bundle install
vagrant$ rake db:create
```

**서버 실행하기**
```{bash}
# Guest
vagrant$ rails s -b 0.0.0.0
```

Host 에서 `http://192.168.20.16:3000/` 로 접속하면 초기화면이 나타납니다.

**Vagrant 명령어**
```{bash}
# Host

$ vagrant up # vagrant를 시작합니다. 최초 실행시 환경설정도 구동합니다.(리눅스 박스를 설치합니다.)

$ vagrant ssh # vagrant 터미널로 접속합니다.

$ vagrant halt # vagrant를 종료합니다. (리눅스 박스 shutdown)

$ vagrant destroy # 해당 박스를 삭제합니다. vagrant halt 후 사용

```
