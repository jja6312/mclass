pipeline {
    agent any // 모든 서버에서 실행 가능

    tools {
        maven 'maven 3.9.12'
    }

    environment {
        DOCKER_IMAGE="demo-app"
        CONTAINER_NAME="springboot-container"
        JAR_FILE_NAME="app.jar"
        PORT="8081"
        REMOTE_USER="ec2-user"
        REMOTE_HOST="3.36.224.159"//springboot-container 서버 주소
        REMOTE_DIR="/home/ec2-user/deploy"
        SSH_CREDENTIALS_ID="22f9ab9e-87bd-4243-95a8-64cc2d5909a8"
    }

    stages {
        stage('Git checkout'){
            steps {
                checkout scm
            }
        }

        stage('Maven Build'){
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        
    }

}