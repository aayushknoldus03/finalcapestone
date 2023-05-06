pipeline {
    agent any
    stages {
    
        stage('python version'){
        steps{
        sh 'python3 --version'
        }
       }
         stage('Building Artifact') {
            steps {
                sh 'tar -cvf app.tar app.py '
            }
        }
        stage('BUilding result') {
            steps {
                sh 'echo build successfull'
            }
        }
         
    }
}
