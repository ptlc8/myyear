pipeline {
    agent any

    parameters {
        string(name: 'WEBPROXY_PATH', defaultValue: params.WEBPROXY_PATH ?: null, description: 'Chemin via le reverse proxy')
    }

    stages {
        stage('Build') {
            steps {
                sh 'docker compose build'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker compose up --remove-orphans -d'
            }
        }
    }
}
