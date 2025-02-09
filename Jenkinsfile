pipeline {
    agent any
    parameters {
        string(name: 'user_input', defaultValue: '1 2 3 4 5', description: 'Enter five numbers separated by space')
    }
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Shayman200/JenkinsCourse.git'
            }
        }
        stage('Make Script Executable') {
            steps {
                sh 'chmod +x calculate.sh'
            }
        }
        stage('Run Script') {
            steps {
                sh "./calculate.sh ${params.user_input}"
            }
        }
    }
}
