pipeline {
  agent {label 'windows'} // Thay đổi từ 'linux' thành 'windows'
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('Cuong-dockerHub')
  }
  stages {
    stage('Build') {
      steps {
        bat '.\\jenkins\\build.bat' // Thay đổi từ 'sh' thành 'bat' và sửa đường dẫn file
      }
    }
    stage('Login') {
      steps {
        bat 'echo %DOCKERHUB_CREDENTIALS_PSW% | docker login -u %DOCKERHUB_CREDENTIALS_USR% --password-stdin' // Thay đổi từ 'sh' thành 'bat' và sử dụng cú pháp biến môi trường của Windows
      }
    }
    stage('Push') {
      steps {
        bat '.\\jenkins\\push.bat' // Thay đổi từ 'sh' thành 'bat' và sửa đường dẫn file
      }
    }
  }
  post {
    always {
      bat '.\\jenkins\\logout.bat' // Thay đổi từ 'sh' thành 'bat' và sửa đường dẫn file
    }
  }
}
