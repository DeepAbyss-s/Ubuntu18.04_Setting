# Ubuntu 18.04 Python 3.7.0 and Ubuntu 18.04 Docker
# 파이썬

파이썬은 데이터 과학자들에게 몇몇 매력적인 이점을 제공합니다.

과거에 비해 속도 또한 많이 빨라지고 있으며 과학 컴퓨팅이나 데이터 분석작업에도 더 나은 선택지를 가져다줍니다.

그리고 파이썬의 런타임 자체가 다른 언어들에 비해 가볍고 실행속도 또한 빨라서 결과를 빠르게 도출하는데 도움이 됩니다.

파이썬은 멀티-코어 병렬 프로세싱을 지원하기때문에 파이썬으로 구현이된 텐서플로우 또한 CPU와 GPU를 활용한 병렬컴퓨팅을 지원합니다.

# 도커

도커란 컨테이너 기반의 오픈소스 가상화 플랫폼입니다.

컨테이너라고 하면 배에 실는 사각형의 화물운반을 위한 박스라고 생각할 수 있습니다.

각각의 컨테이너 안에는 전자제품, 옷, 신발 등등의 다양한 화물을 넣고 규격화 되어 대형선박이나 트레일러에 실려서 각각의 지역으로 쉽게 운송이 됩니다.

서버나 시스템에서도 비슷한 컨테이너가 존재합니다.

프로그램과 실행환경을 컨테이너로 추상화하고 동일한 인터페이스를 제공하며 프로그램의 배포와 관리를 단순하게 해줍니다.

가상화라고 하면 대부분 윈도우상에서 VMWare나 VirtualBox와 같은 OS의 가상화를 생각합니다.

위와 같은 OS 가상화는 비교적 쉽고 간단하지만, 고사양의 시스템이나 많은 양의 저장소, 메모리가 필요하고 프로그램이 무겁고 느려서 운영환경에는 적합하지 않습니다.

이러한 상황을 개선하기 위해서는 CPU의 가상화기능을 이용하여 성능의 개선을 최적화 하고자 프로세스를 격리하는 방식을 사용하기 시작하였습니다.

우분투와 같은 리눅스에서는 위의 방식을 리눅스 컨테이너라고 단순 프로세스를 격리 시키기 때문에 가볍고 상당히 빠르게 작동합니다.

또한 OS 가상화와는 달리 필요한 CPU와 메모리만 사용하여서 성능적인 부분에도 손실이 거의 없습니다.

# 우분투 버전
- Ubuntu 18.04.4 LTS AMD64버전

우분투를 설치 후에 꼭 검색창에서 "Update"를 검색하여 Software Updater를 이용하여 최신 업데이트를 권장합니다.

[우분투 18.04.4 LTS AMD64 다운로드 링크](http://releases.ubuntu.com/18.04.4/?_ga=2.230811615.1549882822.1595100830-783172836.1595100830)

# 권장사양

- 240 GB이상의 3.5 SATA 방식 SSD
- Ubuntu 18.04.4LTS버전인 경우 M.2에서는 오류가 발생하여 안정성이 확인된 3.5인치 SATA 방식의 SSD에서 진행합니다.
- 테스트 진행을 인텔 제온 CPU와 엔비디아 그래픽카드를 이용하여 하였기 때문에 인텔 CPU와 엔비디아 그래픽카드 조합을 권장드립니다.
- 인텔의 AI 워크로드 가속 기술인 DL부스트(DL Boost)가 적용된 CPU를 사용하신다면 작업에 더욱 도움이 됩니다. 

# 실행 방법
터미널을 실행 시킨 후 슈퍼유저 (sudo -E su)로 작업을 진행하는 것을 권장합니다.

파일을 받아둔 디렉토리로 이동하여 아래의 명령어로 실행을 시켜줍니다.

-  ./python3.7.0_setup.sh 

만약 실행이 되지 않는다면 (chmod +x 파일명)명령어를 이용하여 실행권한을 주어 진행을 하시면됩니다.

그리고 실행과 설치가 정상적으로 끝났다면 재부팅을 권장합니다.

도커가 재대로 설치되었는지 확인하는 방법은
 
 - docker version

을 입력해주면 버전을 보여줍니다

# Ubuntu 18.04 Python 3.7.0 Setting
 This is the beginning of the foundation for the development of A.I with Ubuntu 18.04.04 LTS Version.
 It is easy and simple.
 
- When you install Ubuntu 18.04, then update your ubuntu version lastest version in 18.04!
- We recommend this program for setting about Ubuntu 18.04's Basic Learning Setting with python3.7.0 version.
- when it is not work, use superuser mode and use this code "chmod +x (program's name)", then it will perfectly work. 

- We Make Happy Life with A.I -
