pipeline {
    agent {label 'Slave1'}
    stages {
        stage('checkout') {
        
            
            steps {
		
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

