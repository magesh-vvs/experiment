pipeline {
    agent any

    environment {
        BUILD_SCRIPT = './build.sh'
        TEST_SCRIPT  = './test.sh'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Running build script...'
                sh "${BUILD_SCRIPT}"
            }
        }

        stage('Test') {
            steps {
                echo 'Running test script...'
                sh "${TEST_SCRIPT}"
            }
        }

        stage('Archive Artifacts') {
            steps {
                echo 'Archiving build artifacts...'
                archiveArtifacts artifacts: 'output/*.zip', fingerprint: true
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
