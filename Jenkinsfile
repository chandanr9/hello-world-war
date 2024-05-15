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
	    stage('publish') {
	    steps{
		    withCredentials([usernamePassword(credentialsId: 'cd5375c6-0648-47a5-b644-2eb368eab472', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh "docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}"
		    sh "docker push unthu/hello-world:1.3"
		    }
	    }
    }
}
}
