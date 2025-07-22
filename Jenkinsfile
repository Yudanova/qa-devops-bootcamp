pipeline {
    agent any

    stages {
        stage('Run Tests in Docker') {
            steps {
                sh 'docker compose run --rm playwright-tests'
            }
        }

        stage('Archive HTML Report') {
            steps {
                archiveArtifacts artifacts: 'docs/report.html', allowEmptyArchive: true
                publishHTML(target: [
                    reportDir: 'docs',
                    reportFiles: 'report.html',
                    reportName: 'Pytest HTML Report',
                    keepAll: true,
                    alwaysLinkToLastBuild: true
                ])
            }
        }

        stage('Allure Report') {
            steps {
                allure includeProperties: false, jdk: '',
                       results: [[path: 'reports/allure-results']]
            }
        }
    }

    post {
        always {
            sh 'docker compose down || true'
        }
    }
}
