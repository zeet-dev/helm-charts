# tailscale-relay

![Version: 0.1.5](https://img.shields.io/badge/Version-0.1.5-informational?style=flat-square) ![AppVersion: v1.24.2](https://img.shields.io/badge/AppVersion-v1.24.2-informational?style=flat-square)

Deploy a tailscale relay on top of kubernetes

**Homepage:** <https://github.com/zeet-dev/helm-charts>

## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

    helm repo add zeet https://helm.zeet.dev

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages. You can then run `helm search repo zeet` to see the charts.

To install the <chart-name> chart:

    helm install tailscale-relay zeet/tailscale-relay

To uninstall the chart:

    helm delete tailscale-relay

## Maintainers

| Name | Email             | Url             |
| ---- | ----------------- | --------------- |
| Zeet | <support@zeet.co> | https://zeet.co |

## Source Code

- <https://github.com/zeet-dev/helm-charts/tree/main/charts/tailscale-relay>

## Original Creator

This Chart was originally created by Maxime VISONNEAU at https://github.com/mvisonneau/helm-charts
Using the https://github.com/mvisonneau/docker-tailscale image

The version presented here is maintained and verified by Zeet with modification from original source

## Values

| Key                                 | Type   | Default                                                                                                 | Description                                                                                                                                    |
| ----------------------------------- | ------ | ------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| affinity                            | object | `{}`                                                                                                    |                                                                                                                                                |
| annotations                         | object | `{}`                                                                                                    | Additional annotations to add to all resources                                                                                                 |
| config.authKey                      | string | `"foo"`                                                                                                 |                                                                                                                                                |
| config.variables                    | object | `{}`                                                                                                    |                                                                                                                                                |
| hostAliases                         | object | `{}`                                                                                                    | allows you to configure custom host aliases                                                                                                    |
| hostNetwork                         | bool   | `false`                                                                                                 |                                                                                                                                                |
| image.pullPolicy                    | string | `"IfNotPresent"`                                                                                        |                                                                                                                                                |
| image.repository                    | string | `"docker.io/zeetdev/tailscale-relay"`                                                                   |                                                                                                                                                |
| labels                              | object | `{}`                                                                                                    | Additional labels to add to all resources                                                                                                      |
| nodeSelector                        | object | `{}`                                                                                                    |                                                                                                                                                |
| podAnnotations                      | object | `{}`                                                                                                    | Additional annotations for the pods                                                                                                            |
| podLabels                           | object | `{}`                                                                                                    | Additional labels for the pods                                                                                                                 |
| rbac                                | object | `{"create":true,"serviceAccount":{"name":"tailscale-relay"},"stateSecretName":"tailscale-relay-state"}` | If your kubernetes cluster defined the pod security policy, then you need to enable this part, and define clusterRole based on your situation. |
| rbac.serviceAccount                 | object | `{"name":"tailscale-relay"}`                                                                            | default name of serviceAccount is "default" if you don't define the name by yourself                                                           |
| rbac.stateSecretName                | string | `"tailscale-relay-state"`                                                                               | name of the secret in which tailscaled will store its state                                                                                    |
| replicas                            | int    | `1`                                                                                                     |                                                                                                                                                |
| resources                           | object | `{}`                                                                                                    |                                                                                                                                                |
| securityContext.capabilities.add[0] | string | `"NET_ADMIN"`                                                                                           |                                                                                                                                                |
| tolerations                         | list   | `[]`                                                                                                    |                                                                                                                                                |

---

Autogenerated from chart metadata using [helm-docs v1.10.0](https://github.com/norwoodj/helm-docs/releases/v1.10.0)
