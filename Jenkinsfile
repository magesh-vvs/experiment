pipeline {
    agent any

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
            
            }
        }

        stage('Test') {
            steps {
                echo 'Running test script...'
          
            }
        }

        stage('Archive Artifacts') {
            steps {
                echo 'Archiving build artifacts...'
               
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
