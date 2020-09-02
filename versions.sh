#!/usr/bin/env bash
set -e

declare -A source_code_hosting
source_code_hosting=(
  ["sourceforge_vtiger"]=http://sourceforge.net/projects/vtigercrm/files/
  ["github_javanile"]=https://github.com/javanile/vtiger-core/archive/
)

declare -A versions
versions=(
     ["7.2.0"]=main,7.3.12,mariadb-server-10.3,sourceforge_vtiger,vtigercrm,vtiger%20CRM%207.2.0/Core%20Product/vtigercrm7.2.0.tar.gz
     ["7.1.0"]=main,7.0.33,mariadb-server-10.1,github_javanile,vtiger-core-7.1.0,7.1.0.tar.gz
     ["7.1.0-RC"]=main,7.0.33,mariadb-server-10.1,sourceforge_vtiger,vtigercrm,vtiger%20CRM%207.1.0%20RC/Core%20Product/vtigercrm7.1.0rc.tar.gz
     ["7.0.1"]=main,7.0.33,mariadb-server-10.1,sourceforge_vtiger,vtigercrm,vtiger%20CRM%207.0.1/Core%20Product/vtigercrm7.0.1.tar.gz
     ["7.0.0"]=main,7.0.33,mariadb-server-10.1,sourceforge_vtiger,vtigercrm,vtiger%20CRM%207.0/Core%20Product/vtigercrm7.0.0.tar.gz
)
