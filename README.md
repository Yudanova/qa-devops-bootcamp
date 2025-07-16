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
|------------------------|--------------------------------------|------- |
| `jenkins-docker-tests` | Jenkins in Docker + automated tests  | ✅    |
| `aws-report-upload`    | Automated test → report → S3 bucket  | ✅    |
| `ci-github-actions`    | Tests run on push via GitHub Actions | ✅    |

---

## 📓 devops-journal.md — daily learning journal

_A detailed record of my DevOps learning progress as a QA engineer: daily summaries of what I study, commands used, key takeaways, and any issues encountered._

### 📆 Day 1
**Course:** DevOps Pre-Requisite (KodeKloud)  
**Topic:** Linux + Shell + processes  
**Commands:** `cd`, `ls -l`, `ps aux`, `chmod`, `kill`  
**Learned:** How to find and terminate processes, set permissions.  
**Next step:** Install Git and practice with GitHub

### 📆 Day 2
**Course:** Git for Beginners (KodeKloud)  
**Topic:** git init, add, commit, push, branching  
**Practice:** Created repository, wrote README, made first push  
**Issue:** Merge conflict — resolved with merge tool

### 📆 Day 3
**Course:** Jenkins for Beginners  
**What I did:**  
- Launched Jenkins in Docker  
- Created a freestyle job running pytest using the Jenkins GUI  
- Set up webhook from GitHub  
**Note:** This pipeline was configured through the **Jenkins web interface** (freestyle job), not as code.
  ### 💡 Why `requirements.txt` is inside `pytest/`
In this project, we deliberately placed `requirements.txt` inside the `pytest/` folder instead of the root. This design has a purpose:

| Reason                                | Explanation                                                                        |
|---------------------------------------|------------------------------------------------------------------------------------|
| 🧪 Isolated testing environment      | Only the test files and their dependencies are mounted inside the container.        |
| 🧹 Clean project structure           | Keeps unrelated DevOps files (Jenkinsfile, docker-compose.yml) separate from tests. |
| 🎓 Great for learning                | Helps focus on test-related logic while understanding Docker volumes.               |

This setup is best for small, educational projects. In real-world pipelines, placing `requirements.txt` in the root is more common, as tools like GitHub Actions or Jenkins often expect it there. But for now, this is a clean and intentional approach. Finally I moved it to the root.


  ### 📆 Day 4
**Project:** `jenkins-docker-tests`  
**What I did:**  
- Created `Jenkinsfile` to define CI pipeline using **code** instead of GUI  
- Created `docker-compose.yml` to run Jenkins and pytest-runner containers  
- Wrote `pytest/test_example.py` and `requirements.txt`  
- Mounted `pytest/` folder as volume in Docker to run tests  
- Pipeline structure: Git clone → Docker spin-up → run `pytest`  
**Learned:** How to connect all CI parts: GitHub + Jenkins + Docker + Pytest  
**Important:** This was my first **“pipeline as code”** experience — no GUI, just `Jenkinsfile`. The pipeline is now version-controlled and reproducible.  
**Next step:** Test this in KodeKloud Playground and move to GitHub Actions

---

_The journal will continue. Screenshots, pipeline code, and final results are in the respective project directories._

