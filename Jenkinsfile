pipeline {
    agent any
    stages {
    stage('git clone') {
            steps {
               git branch: 'development', url: 'https://github.com/aayushknoldus03/Capestone'
            }
        }
        stage('python version'){
        steps{
        sh 'python3 --version'
        }
       }
         stage('Building Artifact') {
            steps {
                sh 'tar -cvf app.tar app.py'
            }
        }
        stage('BUilding result') {
            steps {
                sh 'echo build successfull'
            }
        }
         
    }
}
