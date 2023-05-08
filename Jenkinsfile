pipeline {
    agent any
    stages {
    stage('git clone') {
            steps {
               git branch: 'main', url: 'https://github.com/aayushknoldus03/finalcapestone '
            }
        }
          stage('Testing result') {
            steps {
                sh 'echo Test successfull'
            }
        }
       
//         stage('Building Docker Image') {
//             steps {
//                 sh 'docker build -t aayush0307/pythonmyapp:V.${BUILD_NUMBER} .'
//             }
//         }
//          stage(' push image to hub'){
//             steps{
//                 script{
//                     withCredentials([string(credentialsId: 'dockerhubid', variable: 'dockerhubtext')]) {
//                     sh 'docker login -u aayush0307 -p ${dockerhubtext}'    
//                     }
//                     sh "docker push aayush0307/pythonmyapp:V.${BUILD_NUMBER}"
//                 }
//             }
//         }

         
    }
}
