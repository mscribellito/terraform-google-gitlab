#!/bin/bash

# Install and configure the necessary dependencies
apt-get update
apt-get install -y curl openssh-server ca-certificates tzdata perl

# Add the GitLab package repository and install the package
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
EXTERNAL_URL="${external_url}" apt-get install gitlab-ce