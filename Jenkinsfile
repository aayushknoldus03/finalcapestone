pipeline {
    agent any
    stages {
    stage('git clone') {
            steps {
              git branch: 'main', url: 'https://github.com/aayushknoldus03/finalcapestone'
            }
        }
        stage('Generating Artificat') {
             steps {
                 sh 'tar -cvf app.tar app.py'
             }
         }
        stage('Building Docker Image') {
            steps {
                sh 'docker build -t aayush0307/pythonmyapp:V.${BUILD_NUMBER} .'
            }
        }
        stage('Docker Login') {
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhubid', variable: 'dockerhubtext')]) {
                    sh 'docker login -u aayush0307 -p ${dockerhubtext}'    
                    }
                }
             }
             }
         stage(' push image to hub'){
            steps{
                    sh "docker push aayush0307/pythonmyapp:V.${BUILD_NUMBER}"
                }
            }
        stage('DEploy') {
            steps {
        withCredentials([file(credentialsId: 'newminikubeconnection', variable: 'var1')]) {
        sh 'kubectl --kubeconfig=$var1 get pods'
            sh 'kubectl --kubeconfig=$var1 apply -f deployment.yml'
            sh 'kubectl --kubeconfig=$var1 set image deployment/python-deployment python-app=aayush0307/pythonmyapp:V.${BUILD_NUMBER}'
           }
         }
      }
         
    }
}
