pipeline {
    agent none
    parameters { string(name: 'PARAM1', description: 'Param 1?') 
                string(name: 'PARAM2', description: 'Param 2?') 
               choice( name: 'CHOICE', choices: ['one', 'two', 'three'], description: '' )
}
    stages {
        stage('checkout') {
        
            
            steps {
                sh 'git clone https://github.com/chandanr9/hello-world-war.git'
            }
        }
    }
}
