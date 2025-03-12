# 🐳 DevOps Neovim Configuration

![LazyVim](https://img.shields.io/badge/LazyVim_Starter-0F9D58?style=for-the-badge)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?logo=kubernetes&logoColor=white)

A battle-tested Neovim configuration optimized for cloud-native development and infrastructure engineering.

## 📂 Repository Structure

```bash
~/.config/nvim/
├── init.lua          # Bootstrap LazyVim
├── lazyvim.json      # 40+ enabled plugins
├── lua/
│   ├── config/       # Custom configurations
│   └── plugins/      # Plugin declarations
├── .gitignore        # Development artifacts
└── LICENSE           # Apache 2.0
```

## 🛠️ DevOps Toolchain

### Core Integrations

| Category         | Tools              | Plugins                        |
| ---------------- | ------------------ | ------------------------------ |
| Containerization | Docker, Podman     | `dockerfile`, `docker-compose` |
| Orchestration    | Kubernetes, Helm   | `helm`, `kustomize`, `yaml`    |
| Infrastructure   | Terraform, Ansible | `terraform`, `hcl`, `ansible`  |
| CI/CD            | GitLab, LazyGit    | `gitlab-ci`, `lazygit`         |

### Enabled LSP Servers

- **Kubernetes**: yaml-language-server, helm-ls
- **Terraform**: terraform-ls, tflint
- **Cloud**: AWS CLI completion, GCP IAM syntax
- **General**: bashls, dockerls, jsonls

## 📦 Maintenance

### Updating Plugins

```bash
:Lazy sync
```

### Adding New Tools

1. Use `<leader>l` Choose which plugin you want
2. Choose which plugin you want
3. Restart Neovim

## 📜 License

Apache 2.0 - See [LICENSE](./LICENSE) for full terms.
