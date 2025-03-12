return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              schemas = {
                ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.20.5-standalone-strict/all.json"] = {
                  "*.k8s.yaml",
                  "*kubernetes*.yaml",
                  "k8s/*.yaml",
                  "manifests/*.yaml",
                  "charts/*/templates/*.yaml", -- Helm chart templates are Kubernetes manifests
                },
                ["https://json.schemastore.org/github-workflow"] = { ".github/workflows/*.{yml,yaml}" },
                ["https://json.schemastore.org/github-action"] = { ".github/action.{yml,yaml}" },
                ["https://json.schemastore.org/ansible-stable-2.9"] = {
                  "roles/*/tasks/*.{yml,yaml}",
                  "roles/tasks/*.{yml,yaml}",
                  "ansible/*.{yml,yaml}",
                },
                ["https://json.schemastore.org/prettierrc"] = { ".prettierrc.{yml,yaml}" },
                ["https://json.schemastore.org/kustomization"] = {
                  "kustomization.{yml,yaml}",
                  "*/kustomization.{yml,yaml}",
                },
                ["https://raw.githubusercontent.com/ansible/ansible-lint/main/src/ansiblelint/schemas/ansible.json#/$defs/playbook"] = {
                  "*play*.{yml,yaml}",
                  "playbooks/*.{yml,yaml}",
                },
                ["https://json.schemastore.org/chart.json"] = {
                  "Chart.{yml,yaml}",
                  "charts/*/Chart.{yml,yaml}",
                  "**/Chart.{yml,yaml}",
                },
                ["https://json.schemastore.org/dependabot-v2"] = { ".github/dependabot.{yml,yaml}" },
                ["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = {
                  "*gitlab-ci*.{yml,yaml}",
                  ".gitlab-ci.{yml,yaml}",
                },
                ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = {
                  "*api*.{yml,yaml}",
                  "openapi.{yml,yaml}",
                  "swagger.{yml,yaml}",
                },
                ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = {
                  "*docker-compose*.{yml,yaml}",
                  "docker-compose.{yml,yaml}",
                  "*/docker-compose.{yml,yaml}",
                },
                ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = {
                  "*flow*.{yml,yaml}",
                  "workflows/*.{yml,yaml}",
                },
                ["https://json.schemastore.org/helmfile"] = { "helmfile.{yml,yaml}", "*/helmfile.{yml,yaml}" },
                ["https://json.schemastore.org/helm-values"] = {
                  "values.{yml,yaml}",
                  "values-*.{yml,yaml}",
                  "charts/*/values.{yml,yaml}",
                  "charts/*/values-*.{yml,yaml}",
                  "**/values.{yml,yaml}",
                },
                ["https://json.schemastore.org/cloudbuild"] = { "cloudbuild.{yml,yaml}", "*/cloudbuild.{yml,yaml}" },
                ["https://json.schemastore.org/codecov"] = { "codecov.{yml,yaml}", ".codecov.{yml,yaml}" },
                ["https://json.schemastore.org/cloud-sdk-pipeline"] = { "cloudsdk.{yml,yaml}", "*/cloudsdk.{yml,yaml}" },
                ["https://json.schemastore.org/circleci"] = { ".circleci/config.{yml,yaml}" },
                ["https://json.schemastore.org/codespaces"] = {
                  ".devcontainer.{yml,yaml}",
                  "devcontainer.{yml,yaml}",
                  ".devcontainer/devcontainer.{yml,yaml}",
                },
                ["https://json.schemastore.org/github-discussion"] = { ".github/discussion.{yml,yaml}" },
                ["https://json.schemastore.org/pre-commit-config"] = { ".pre-commit-config.{yml,yaml}" },
                ["https://raw.githubusercontent.com/argoproj/argo-cd/master/pkg/apis/application/v1alpha1/swagger.json"] = {
                  "*argocd*.{yml,yaml}",
                  "application.{yml,yaml}",
                  "applications/*.{yml,yaml}",
                  "argocd/*.{yml,yaml}",
                },
                ["https://raw.githubusercontent.com/aws/serverless-application-model/main/samtranslator/schema/schema.json"] = {
                  "template.{yml,yaml}",
                  "sam.{yml,yaml}",
                  "sam/*.{yml,yaml}",
                  "cloudformation/*.{yml,yaml}",
                },
              },
            },
          },
        },
      },
    },
  },
}
