#!/usr/bin/env bash
set -e

export version=$1

if [[ -z "$version" ]]; then
    echo "Syntax error: Specify a suitable version (eg. ./publish.sh 7.1.0)"
    exit 1
fi

if [[ ! -d "$version" ]]; then
    echo "Version error: The specified version does not exist."
    exit 1
fi

#docker-compose run --rm debian
./update.sh
#docker-compose run --rm debian
rm -fr ./vtiger

docker build -t gridev/vtiger:${version} ${version}
docker push gridev/vtiger:${version}

git add . > /dev/null
git commit -am "$*"
git push
