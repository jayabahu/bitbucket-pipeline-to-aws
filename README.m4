syscmd(`docker run jayabahu/bitbucket-pipeline-to-aws -c "npm -v"')
syscmd(`docker run jayabahu/bitbucket-pipeline-to-aws -c "node -v"')
syscmd(`docker run jayabahu/bitbucket-pipeline-to-aws -c "webpack -v"')
syscmd(`docker run jayabahu/bitbucket-pipeline-to-aws -c "yarn -V"')
syscmd(`docker run jayabahu/bitbucket-pipeline-to-aws -c "gpg --version|head -1"')
syscmd(`docker run jayabahu/bitbucket-pipeline-to-aws -c "rhash --version"')
