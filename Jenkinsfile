pipeline {
  agent any

 stages {
        stage('Build Docker Image') {
          steps {
           script {
            docker.withRegistry('https://registry.hub.docker.com', 'Cuong-dockerHub') {
                def dockerImage = docker.build("cuongkhongle/demo-jenkins:latest", ".")
            }
        }
    }
}


        stage('Push Docker Image to DockerHub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'Cuong-dockerHub') {
                        docker.image("cuongkhongle/demo-jenkins:latest").push()
                    }
                }
            }
        }
    }
}
