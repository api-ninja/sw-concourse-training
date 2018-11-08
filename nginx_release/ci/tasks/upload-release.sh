#!/usr/bin/env bash
# These variables are provided by your instructor
export CA_CERT_URL=https://s3.us-east-2.amazonaws.com/dg-training-concourse/training-bosh.pem
export BOSH_CLIENT=admin
export BOSH_CLIENT_SECRET=kDuaJ8nD0Ky5GGLXntsFeg88M934a3
export BOSH_DEPLOYMENT=ninja-release
export BOSH_DIRECTOR=https://10.4.1.4:25555
export BOSH_ENVIRONMENT=training


cd source-code/nginx_release

#bosh upload-release releases/release.gz -d ninja-release
bosh upload-release releases/release.gz -d ninja-release
