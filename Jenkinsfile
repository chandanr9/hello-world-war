pipeline {
    agent {label 'slave1'}
    stages {
        stage('checkout') {
        
            
            steps {
		sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/chandanr9/hello-world-war.git'
            }
        }
	stage('Build') {
        
            
            steps {
		sh 'mvn clean package'
            }
        }
    }
}

