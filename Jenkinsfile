pipeline {
    agent {label 'maven-build-project'}

    stages {
        stage('git clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Tejus003/sample-httpd-website.git'
            }
        }
        stage('display files cloned') {
            steps {
                sh 'cd /var/jenkins/workspace/https_demo/'
                sh 'ls'
            }
        }
        stage('install httpd') {
            steps {
                sh 'yum install httpd -y '
                sh 'systemctl start httpd'
            }
        }
        stage('copy files to HTTPD path') {
            steps {
                sh 'cp -r /var/jenkins/workspace/https_demo/* /var/www/html/'
            }
        }
    }
}
