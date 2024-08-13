
# Ansible Environment Initialization

This script sets up your Ansible environment in `/opt/ansible` with the appropriate permissions and ownership.

## Prerequisites

- You need to have `sudo` privileges to run this script.

## Clone the Repository

First, clone the Ansible repository to your local machine:

```bash
git clone https://github.com/pedroanisio/ansible.git
```

## Running the Initialization Script

Once you've cloned the repository, navigate to the directory where the script is located and run it:

```bash
cd ansible
sudo ./init_ansible_env.sh
```

This script will:
- Create the directory `/opt/ansible` if it doesn't exist.
- Set the ownership of the directory to the user `pals` and group `pals`.
- Set the directory permissions to `775`, allowing the owner and group to read, write, and execute, while others can only read and execute.

After running the script, your Ansible environment will be properly set up and ready for use.

## Verification

To verify the setup, check the directory's permissions and ownership:

```bash
ls -ld /opt/ansible
```

This should show `pals:pals` as the owner and group with `drwxrwxr-x` permissions.
```

This README snippet guides users through cloning the specified repository, running the setup script, and verifying the correct permissions and ownership.
