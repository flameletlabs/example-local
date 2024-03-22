#!/usr/bin/env bash
# shellcheck disable=SC2034

CFG_TENANT="local"

# CFG_SSH_CONTROLLER="ansible@controller.local"
# CFG_SSH_OPTIONS="-i ${HOME}/.ssh/ansible/id_rsa"

CFG_ANSIBLE_PACKAGE="ansible-core"
CFG_ANSIBLE_VERSION="2.16.4"

CFG_FLAMELET_TENANT_REPO="git@github.com:flameletlabs/example-local.git"
CFG_FLAMELET_TENANT_BRANCH="main"

# CFG_ANSIBLE_INVENTORY_REPO=""
# CFG_ANSIBLE_PLAYBOOK_REPO=""

CFG_ANSIBLE_CONFIG="${HOME}/.flamelet/tenant/example-local/ansible/ansible.cfg"

CFG_ANSIBLE_INVENTORY="${HOME}/.flamelet/tenant/example-local/ansible/inventory.yml"
CFG_ANSIBLE_PLAYBOOK="${HOME}/.flamelet/tenant/example-local/ansible/playbook.yml"

# CFG_ANSIBLE_OPTIONS="-u ansible --private-key ${HOME}/.ssh/id_rsa"

# CFG_ANSIBLE_GALAXY_COLLECTIONS_INSTALL="\
#     community.docker"

# CFG_ANSIBLE_GALAXY_COLLECTIONS_REMOVE=""

CFG_ANSIBLE_GALAXY_ROLES_INSTALL="\
    buluma.bootstrap"

# CFG_ANSIBLE_GALAXY_ROLES_REMOVE=""
