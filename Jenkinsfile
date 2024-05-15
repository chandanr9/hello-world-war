pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                echo "hello"
                }
            }
        stage('clone') {
            steps {
		        sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/chandanr9/hello-world-war.git'
            }
        }
	stage('Build') {
            steps {
        		sh 'docker build -t unthu/hello-world:1.3 .'
            }
        }
    }
}
