[![DelivOps banner](https://raw.githubusercontent.com/delivops/.github/main/images/banner.png?raw=true)](https://delivops.com)

# 🛠 DelivOps Toolbox (dt) 🛠

Dive into DevOps with this handful Docker image, based on `python:3.12-slim`.

It's your Swiss Army knife for your ops day to day work.

## What's Inside?

- `awscli`
- `kubectl`
- `argocd`
- Plus: `curl`, `jq`, `git`, `ssh`, `nano`, and more for your daily operations!

## Get Started

Save the following alias to your `~/.bash_profile`

```sh
alias dt=docker run --rm -it -v ~/.aws:/root/.aws:ro -v ~/.kube:/root/.kube:ro -v ~/.ssh:/root/.ssh:ro ghcr.io/delivops/toolbox:latest
```
Feel free to adjust the mounted volumes to your need.

## Usage Examples

Run some commands
```sh
dt aws sts get-caller-identity

dt k get namespaces
```

or use it as a temp shell
```sh
dt
root@3739efa7e166:/work# git clone git@github.com:delivops/toolbox.git
Cloning into 'toolbox'...
```

## Make It Yours
Fork → Customize Dockerfile → Build `docker build -t your-tag .` → Conquer! 🏆

# Contributions
Feel free to contribute by submitting pull requests or opening issues for bugs and feature requests.

