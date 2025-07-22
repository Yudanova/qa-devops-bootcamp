# DevOps for QA Bootcamp 🚀

📍 **Goal:** Gain real DevOps skills applicable to QA work: CI/CD, Jenkins, GitHub Actions, Docker, AWS, logging, and infrastructure for automated testing.

---

## 🧠 Topics Covered

- ✔️ Git, GitHub, CI pipeline structure
- ✔️ Jenkins pipelines: running automated tests
- ✔️ Docker: environments and containerized tests
- ✔️ GitHub Actions: test automation
- ✔️ AWS: EC2, S3, IAM, CloudWatch
- ✔️ Logging and monitoring
- ✔️ API testing in CI

---

## 📁 Projects

| Project                | Description                          | Status |
|------------------------|--------------------------------------|--------|
| `jenkins-docker-tests` | Jenkins in Docker + automated tests  | ✅     |
| `aws-report-upload`    | Automated test → report → S3 bucket  | ✅     |
| `ci-github-actions`    | Tests run on push via GitHub Actions | ✅     |

---

## 📓 build-log.md — CI/CD & testing journal

_A technical log of my DevOps journey as a QA engineer: what I built, learned, and improved across Jenkins, Docker, GitHub Actions, and automated testing._

### 🔧 Linux & Shell Basics

- Learned basic shell commands: `cd`, `ls -l`, `ps aux`, `chmod`, `kill`
- Practiced process management and permission handling
- Tools: KodeKloud Playground

### 🔧 Git & GitHub

- Initialized repo, added files, committed and pushed to GitHub
- Practiced branching and resolving merge conflicts
- Tools: Git CLI, GitHub

### 🔧 Jenkins Setup

- Launched Jenkins in Docker
- Created freestyle job running pytest
- Set up webhook from GitHub
- Compared GUI jobs vs pipeline-as-code

### 🔧 Pipeline as Code

- Created `Jenkinsfile` with stages: test, report, cleanup
- Integrated Docker container `playwright-tests`
- Used `archiveArtifacts`, `publishHTML`, and Allure plugin
- Learned how to version-control CI logic

### 🐳 Docker & Test Environment

- Built custom Docker image with Playwright and Pytest
- Mounted volumes for test code and reports
- Used `docker-compose.yml` to orchestrate containers
- Learned how to isolate test environments

### 📊 Reporting

- Generated HTML report with `pytest-html`
- Generated Allure report and published in Jenkins
- Learned how to visualize test results in CI

### 🚀 CI/CD Integration

- Connected GitHub repo to Jenkins
- Triggered pipeline on push
- Automated test runs and reporting

### 🐞 Ошибки и решения

#### ❌ Ошибка: Merge conflict при push в GitHub
**Причина:** Изменения в одной и той же строке в разных ветках  
**Решение:** Использовала встроенный merge tool, вручную выбрала нужную версию

#### ❌ Ошибка: `docker-compose.yml` not found
**Причина:** Jenkinsfile ожидал файл в корне, но он был в `jenkins-docker-tests/`  
**Решение:** Переместила `docker-compose.yml` в корень проекта и обновила пути

#### ❌ Ошибка: HTML-отчёт не публиковался в Jenkins
**Причина:** Несоответствие пути между `Jenkinsfile` и `docker-compose.yml`  
**Решение:** Согласовала путь `reports/report.html` и настроила `publishHTML`

#### ❌ Ошибка: `pytest` не запускался в контейнере
**Причина:** Отсутствовали зависимости в `requirements.txt`  
**Решение:** Добавила `pytest`, `pytest-playwright`, `playwright`, `pytest-html`, `allure-pytest`

---

_This log will continue as I expand the CI pipeline, integrate GitHub Actions, and explore deployment strategies. Screenshots, pipeline code, and final results are in the respective project directories._