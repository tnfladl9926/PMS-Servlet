# Servlet Project - PMS system
서블릿 + JSP를 기반으로 구현한 프로젝트입니다.  
<br/>

## 🖥 프로젝트 소개
사내 효율적인 프로젝트 관리를 위한 PMS프로그램을 구현하였습니다.
목표를 두었습니다.
<br/>


## 📅 개발기간
* 23.05.26 ~ 23.06.09  
<br/>

## :two_men_holding_hands: 팀원 구성
 - 김수림: 프로젝트센터(이슈, 산출물), 버전관리 CRUD
 - 연진섭: 메인화면, WBS, 이슈 CRUD
 - 이채린: 메인화면, WBS, 결재 CRUD
 - 김재욱: 프로젝트센터(프로젝트 등록, 비용등록)
 - 최재현: 작업관리 CRUD, 캘린더
 - 유동현: 작업관리, 산출물관리 CRUD
 - 김지우: 공지사항 CRUD, 사원등록  
<br/>
  
## ⚙ 개발 환경
* `Java 11`
* `JDK 11.0.1`
- **IDE** : Eclipse
- **Database** : Oracle DB(11xe)

### ✔️Frond-end
<img src="https://img.shields.io/badge/HTML-E34F26?style=for-the-badge&logo=HTML5&logoColor=white"> <img src="https://img.shields.io/badge/Css-1572B6?style=for-the-badge&logo=Css3&logoColor=white"> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white"> <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white"> <img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white">
### ✔️Back-end
<img src="https://img.shields.io/badge/JAVA-007396?style=for-the-badge&logo=java&logoColor=white"> <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white">  
<br/>

## :keyboard:DB 설계
![pmserd](https://github.com/tnfladl9926/PMS-Servlet/assets/134984241/8e586233-5bb7-430f-9bf1-0065f15a1807)  
</br>

## 📌 주요 기능

#### 종합 대시보드 [상세보기-WIKI이동](https://github.com/tnfladl9926/PMS-Servlet/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(%EC%A2%85%ED%95%A9-%EB%8C%80%EC%8B%9C%EB%B3%B4%EB%93%9C))
  - 프로젝트 관련 사항 알림
  - 로그인한 사원의 작업 진척도
  - 로그인한 사원이 참여하고 있는 프로젝트 전체 진척도
  - 팀별 프로젝트 정보 조회

#### 프로젝트 센터 [상세보기-WIKI이동](https://github.com/tnfladl9926/PMS-Servlet/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EC%84%BC%ED%84%B0))
  - 프로젝트에 대한 이슈, 산출물, 버전 등 조회

#### 버전관리 [상세보기-WIKI이동](https://github.com/tnfladl9926/PMS-Servlet/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(%EB%B2%84%EC%A0%84-%EA%B4%80%EB%A6%AC))
  - 완료된 프로젝트 버전 정보 관리
  - 이미지, 파일 등 여러 유형의 서류 CRUD
  - 파일 다운로드  
<br/>

## :heartpulse: 느낀점
#### :heart: 웹개발의 전반적인 프로세스를 이해하였습니다.
요구사항을 분석하고, 기능을 확정하고, 구현할 코드를 상상하며 ERD를 설계하고, 프론트엔드와 백엔드 구현을 하는 등 모든 작업을 팀원들과 함께 하면서 웹 개발에 대한 프로세스를 익힐 수 있었습니다. 웹 개발의 모든 프로세스를 처음부터 끝까지 팀원들과 해내면서 다음 단계를 생각하며 나아가다 보니 웹 개발 프로세스에 대한 이해도가 깊어졌습니다. 예를 들어 이전에는 주어진 요구사항에 맞게 ERD를 설계하였다면 이 프로젝트를 하면서는 주어진 요구사항뿐만 아니라 구현을 할때 어떻게 ERD를 설계해야 구현할 때 더욱 편할까를 생각하며 ERD를 설계할 수 있었습니다.  <br/>
코드 구현에서도 요청한 페이지를 띄우거나, 정보를 보내고, DB 처리를 하는 등의기능을 구현하면서 백엔드에 대한 이해도가 높아졌으며 여러번 실습하며 성장할 수 있었습니다.  
<br/>
#### :heart: 주석의 중요성을 깨달았습니다.
초반의 저는 코드를 구현하며 주석을 많이 다는 편이 아니였습니다. 하지만 이 프로젝트에서 정말 주석의 중요성을 톡톡히 느낄 수 있었습니다. 프로젝트를 합치는 과정에서 제가 구현했던 코드에서 오류가 났던 경험이 있습니다. 제가 구현한 부분이였지만 약간의 시간이 지나서 그 부분이 생각이 나지 않았고, 그 코드를 해석하는데 많은 시간이 소요되어 시간낭비를 하게 되었습니다. 그때 선생님께서 매우 강조하셨던 주석의 중요성을 직접 느낄 수 있었고 이 프로젝트를 계기로 다음 프로젝트부터 코드정리와 주석을 습관화하려고 노력하였습니다.
<br/>
#### :heart: 프론트엔드 구현에서 아쉬움이 남습니다.
개인적으로 프론트엔드의 완성도가 부족하다는 생각이 듭니다. 사이드바를 다른 파일로 빼는 과정에서 자꾸 오류가 발생하여 시간문제로 해결하지 못하고 모든 jsp파일에 사이드바를 구현한 코드가 있습니다. 사이드바의 문구를 고치려면 프로젝트의 모든 jsp파일을 수정하는 등 많은 시간 낭비가 있었고, CSS코드 때문에 가독성이 떨어지는 문제도 있었습니다.   
<br/>
