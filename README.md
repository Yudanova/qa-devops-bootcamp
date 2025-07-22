## 📓 build-log.md — CI/CD & testing journalx

_A detailed record of my DevOps journey as a QA engineer: what I built, learned, and improved._

### 🔧 Jenkins Setup

- Launched Jenkins in Docker
- Created freestyle job running pytest
- Set up webhook from GitHub
- Learned difference between GUI jobs and pipeline-as-code

### 🧪 Pipeline as Code

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
- Learned how to automate test runs and reporting

---

_This journal now tracks topics and milestones instead of calendar days._
