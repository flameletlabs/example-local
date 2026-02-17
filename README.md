# example-local

A minimal [flamelet](https://github.com/flameletlabs/flamelet) tenant for local provisioning. Use this as a starting point to learn how flamelet works.

## What's in here

| File | Purpose |
|------|---------|
| `config.sh` | Flamelet tenant configuration (tenant name, ansible version, paths) |
| `ansible/ansible.cfg` | Ansible defaults |
| `ansible/inventory.yml` | Inventory with a single `localhost` entry |
| `ansible/playbook.yml` | Simple playbook: show system info, install packages, show user |

## Prerequisites

- [flamelet](https://github.com/flameletlabs/flamelet) installed
- `git` installed

## Setup

Clone this repo into flamelet's tenant directory:

```bash
git clone https://github.com/flameletlabs/example-local.git \
  ~/.flamelet/tenant/flamelet-example-local
```

Install the ansible virtual environment:

```bash
flamelet -t example-local installansible
```

## Usage

Run the full playbook:

```bash
flamelet -t example-local -l ansible
```

Run only specific tags:

```bash
flamelet -t example-local -l ansible -- --tags info
flamelet -t example-local -l ansible -- --tags packages
```

Check what would change without applying (dry run):

```bash
flamelet -t example-local -l ansible -- --check
```

## Customizing

This example is intentionally minimal. To extend it:

- **Add hosts** — edit `ansible/inventory.yml` to add remote machines
- **Add roles** — install roles via `CFG_ANSIBLE_GALAXY_ROLES_INSTALL` in `config.sh`
- **Add collections** — install collections via `CFG_ANSIBLE_GALAXY_COLLECTIONS_INSTALL` in `config.sh`
- **Add tasks** — extend `ansible/playbook.yml` with your own tasks or roles
- **Use SSH** — uncomment and configure `CFG_SSH_CONTROLLER` in `config.sh` for remote provisioning

For a production-grade example with remote hosts, roles, and multi-OS support, see [example-remote](https://github.com/flameletlabs/example-remote) (coming soon).

## Learn more

- [flamelet documentation](https://flameletlabs.github.io/flamelet/)
- [flamelet GitHub](https://github.com/flameletlabs/flamelet)
