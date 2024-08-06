pipeline {
agent any
stages {
stage(&#39;Building&#39;) {
steps {
echo &#39;Building Stage Running...&#39;
echo &quot;Running ${env.BUILD_ID}
${env.BUILD_DISPLAY_NAME} on ${env.NODE_NAME}
and JOB ${env.JOB_NAME}&quot;

}
}

stage(&#39;Testing&#39;) {
steps {
echo &#39;Testing Stage Running...&#39;
}
}
stage(&#39;Deploying&#39;) {
steps {
echo &#39;Deploying Stage Running...&#39;
}
}
}
}

Structure of declarative pipeline:
pipeline {
agent any
stages {
stage(‘Build’) {
steps {
//…
}
}
stage (‘Test’) {
steps {
//…
}

}
}
}
