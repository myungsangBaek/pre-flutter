## Getting Started

### Run

```bash
flutter run -d chrome
```

### Version Update

```bash
# 현재 채널 및 버전 확인
flutter --version

# 채널 변경 (optional)
flutter channel stable

# 업그레이드
flutter upgrade

# 작업 프로젝트의 패키지 업그레이드 (좀 오래 걸리니 -v 옵션 추가해서 로그 출력)
flutter -v pub get
```

## Version

| Name | Version |
| ---- | ------- |
| Dart | 3.1.2   |

## R&R

### 1차 개발

| Feature             | Developer   | Load | Interaction |
| ------------------- | ----------- | ---- | ----------- |
| 카카오 주소검색 API | Youjin.choi | ok | |
| PASS인증            | Youjin.choi | | |
| PAYCO               | Han.baek    | | |
| 카카오 맵API        | Han.baek    | | |
| KAKAO로그인         | Han.baek    | | |
| Naver로그인         | Youjin.choi | | |
| Facebook로그인      | TBD         | | |
| API모듈화           | TBD         | | |
| 디렉토리구조        | TBD         | | |

## Convention

### Commit

`feat: Generate map`

### branch

`feature/name`

## Refer Link

[Web Docs](https://docs.flutter.dev/platform-integration/web/building)
