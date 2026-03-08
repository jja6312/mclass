#!/bin/bash
rm -rf .git
git init
git remote add origin https://devops.scmservice.ap-seoul-1.oci.oraclecloud.com/namespaces/cnhqsj2z7oi3/projects/project-devopsPoC3/repositories/coderepo_devopsPoC3
git branch -m master main
