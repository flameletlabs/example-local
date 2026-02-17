#!/usr/bin/env bash
# shellcheck disable=SC2034
#
# Flamelet tenant configuration — example-local
# This is a minimal example for local provisioning (no remote SSH needed).

# Tenant name — used by flamelet to identify this configuration
CFG_TENANT="example-local"

# Ansible package and version to install in the virtual environment
CFG_ANSIBLE_PACKAGE="ansible-core"
CFG_ANSIBLE_VERSION="2.16.5"

# Git repository for this tenant (used by 'flamelet update')
CFG_FLAMELET_TENANT_REPO="git@github.com:flameletlabs/example-local.git"
CFG_FLAMELET_TENANT_BRANCH="main"

# Paths to ansible configuration files within the tenant directory
CFG_ANSIBLE_CONFIG="${HOME}/.flamelet/tenant/flamelet-example-local/ansible/ansible.cfg"
CFG_ANSIBLE_INVENTORY="${HOME}/.flamelet/tenant/flamelet-example-local/ansible/inventory.yml"
CFG_ANSIBLE_PLAYBOOK="${HOME}/.flamelet/tenant/flamelet-example-local/ansible/playbook.yml"

# No SSH controller needed — this example runs locally only
# CFG_SSH_CONTROLLER="ansible@controller.local"

# No galaxy dependencies — this example is self-contained
# CFG_ANSIBLE_GALAXY_COLLECTIONS_INSTALL=""
# CFG_ANSIBLE_GALAXY_ROLES_INSTALL=""
