#!/usr/bin/env bash
# These variables are provided by your instructor
export CA_CERT_URL=https://s3.us-east-2.amazonaws.com/dg-training-concourse/training-bosh.pem
export BOSH_CLIENT=admin
export BOSH_CLIENT_SECRET=kDuaJ8nD0Ky5GGLXntsFeg88M934a3
export BOSH_DEPLOYMENT=api-ninja-release
export BOSH_DIRECTOR="https://10.4.1.4:25555"
export BOSH_ENVIRONMENT=training

export CF_TRACE=true

wget ${CA_CERT_URL}

bosh alias-env ${BOSH_ENVIRONMENT} --ca-cert training-bosh.pem -e ${BOSH_DIRECTOR}


cd source-code/nginx_release

bosh upload-release releases/release.gz 
