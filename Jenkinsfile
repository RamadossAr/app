node {
   def registryProjet='https://hub.docker.com/repository/docker/kilokilo8/app'
   def IMAGE="${registryProjet}:version-${env.BUILD_ID}"
    stage('Clone') {
          checkout scm
    }
    def img = stage('Build') {
          docker.build("$IMAGE",  '.')
    }
    stage('Run') {
          img.withRun("--name run-$BUILD_ID -p 80:80") { c ->
            sh 'curl localhost'
          }
    }
    stage('Push') {
          docker.withRegistry('https://hub.docker.com/', 'dockerhubcredentials') {
              img.push 'latest'
              img.push()
          }
    }
}

