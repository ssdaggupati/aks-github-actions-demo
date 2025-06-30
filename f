.
|-- README.md
|-- README.md~
|-- actions-runner-controller
|   |-- CODEOWNERS
|   |-- CODE_OF_CONDUCT.md
|   |-- CONTRIBUTING.md
|   |-- Dockerfile
|   |-- LICENSE
|   |-- Makefile
|   |-- PROJECT
|   |-- README.md
|   |-- SECURITY.md
|   |-- TROUBLESHOOTING.md
|   |-- acceptance
|   |   |-- argotunnel.sh
|   |   |-- checks.sh
|   |   |-- deploy.sh
|   |   |-- deploy_runners.sh
|   |   |-- kind.yaml
|   |   |-- pipelines
|   |   |   |-- eks-integration-tests.yaml
|   |   |   `-- runner-integration-tests.yaml
|   |   |-- testdata
|   |   |   |-- kubernetes_container_mode.envsubst.yaml
|   |   |   |-- runnerdeploy.envsubst.yaml
|   |   |   `-- runnerset.envsubst.yaml
|   |   `-- values.yaml
|   |-- apis
|   |   |-- actions.github.com
|   |   |   `-- v1alpha1
|   |   |       |-- appconfig
|   |   |       |   |-- appconfig.go
|   |   |       |   `-- appconfig_test.go
|   |   |       |-- autoscalinglistener_types.go
|   |   |       |-- autoscalingrunnerset_types.go
|   |   |       |-- ephemeralrunner_types.go
|   |   |       |-- ephemeralrunnerset_types.go
|   |   |       |-- groupversion_info.go
|   |   |       |-- proxy_config_test.go
|   |   |       |-- tls_config_test.go
|   |   |       |-- version.go
|   |   |       |-- version_test.go
|   |   |       `-- zz_generated.deepcopy.go
|   |   `-- actions.summerwind.net
|   |       `-- v1alpha1
|   |           |-- groupversion_info.go
|   |           |-- horizontalrunnerautoscaler_types.go
|   |           |-- runner_types.go
|   |           |-- runner_webhook.go
|   |           |-- runnerdeployment_types.go
|   |           |-- runnerdeployment_webhook.go
|   |           |-- runnerreplicaset_types.go
|   |           |-- runnerreplicaset_webhook.go
|   |           |-- runnerset_types.go
|   |           `-- zz_generated.deepcopy.go
|   |-- build
|   |   `-- version.go
|   |-- charts
|   |   |-- actions-runner-controller
|   |   |   |-- Chart.yaml
|   |   |   |-- README.md
|   |   |   |-- ci
|   |   |   |   `-- ci-values.yaml
|   |   |   |-- crds
|   |   |   |   |-- actions.summerwind.dev_horizontalrunnerautoscalers.yaml
|   |   |   |   |-- actions.summerwind.dev_runnerdeployments.yaml
|   |   |   |   |-- actions.summerwind.dev_runnerreplicasets.yaml
|   |   |   |   |-- actions.summerwind.dev_runners.yaml
|   |   |   |   `-- actions.summerwind.dev_runnersets.yaml
|   |   |   |-- docs
|   |   |   |   `-- UPGRADING.md
|   |   |   |-- templates
|   |   |   |   |-- NOTES.txt
|   |   |   |   |-- _actions_metrics_server_helpers.tpl
|   |   |   |   |-- _github_webhook_server_helpers.tpl
|   |   |   |   |-- _helpers.tpl
|   |   |   |   |-- actionsmetrics.deployment.yaml
|   |   |   |   |-- actionsmetrics.ingress.yaml.yml
|   |   |   |   |-- actionsmetrics.role.yaml
|   |   |   |   |-- actionsmetrics.role_binding.yaml
|   |   |   |   |-- actionsmetrics.secrets.yaml
|   |   |   |   |-- actionsmetrics.service.yaml
|   |   |   |   |-- actionsmetrics.serviceaccount.yaml.yml
|   |   |   |   |-- actionsmetrics.servicemonitor.yaml.yml
|   |   |   |   |-- auth_proxy_role.yaml
|   |   |   |   |-- auth_proxy_role_binding.yaml
|   |   |   |   |-- certificate.yaml
|   |   |   |   |-- ci-secret.yaml
|   |   |   |   |-- controller.metrics.service.yaml
|   |   |   |   |-- controller.metrics.serviceMonitor.yaml
|   |   |   |   |-- controller.pdb.yaml
|   |   |   |   |-- deployment.yaml
|   |   |   |   |-- githubwebhook.deployment.yaml
|   |   |   |   |-- githubwebhook.ingress.yaml
|   |   |   |   |-- githubwebhook.pdb.yaml
|   |   |   |   |-- githubwebhook.role.yaml
|   |   |   |   |-- githubwebhook.role_binding.yaml
|   |   |   |   |-- githubwebhook.secrets.yaml
|   |   |   |   |-- githubwebhook.service.yaml
|   |   |   |   |-- githubwebhook.serviceMonitor.yaml
|   |   |   |   |-- githubwebhook.serviceaccount.yaml
|   |   |   |   |-- leader_election_role.yaml
|   |   |   |   |-- leader_election_role_binding.yaml
|   |   |   |   |-- manager_role.yaml
|   |   |   |   |-- manager_role_binding.yaml
|   |   |   |   |-- manager_role_binding_secrets.yaml
|   |   |   |   |-- manager_role_secrets.yaml
|   |   |   |   |-- manager_secrets.yaml
|   |   |   |   |-- runner_editor_role.yaml
|   |   |   |   |-- runner_viewer_role.yaml
|   |   |   |   |-- serviceaccount.yaml
|   |   |   |   |-- webhook_configs.yaml
|   |   |   |   `-- webhook_service.yaml
|   |   |   `-- values.yaml
|   |   |-- gha-runner-scale-set
|   |   |   |-- Chart.yaml
|   |   |   |-- ci
|   |   |   |   `-- ci-values.yaml
|   |   |   |-- templates
|   |   |   |   |-- NOTES.txt
|   |   |   |   |-- _helpers.tpl
|   |   |   |   |-- autoscalingrunnerset.yaml
|   |   |   |   |-- githubsecret.yaml
|   |   |   |   |-- kube_mode_role.yaml
|   |   |   |   |-- kube_mode_role_binding.yaml
|   |   |   |   |-- kube_mode_serviceaccount.yaml
|   |   |   |   |-- manager_role.yaml
|   |   |   |   |-- manager_role_binding.yaml
|   |   |   |   `-- no_permission_serviceaccount.yaml
|   |   |   |-- tests
|   |   |   |   |-- template_test.go
|   |   |   |   |-- values.yaml
|   |   |   |   |-- values_dind_extra_init_containers.yaml
|   |   |   |   |-- values_dind_extra_volumes.yaml
|   |   |   |   |-- values_dind_merge_spec.yaml
|   |   |   |   |-- values_extra_containers.yaml
|   |   |   |   |-- values_extra_pod_spec.yaml
|   |   |   |   |-- values_extra_volumes.yaml
|   |   |   |   |-- values_k8s_extra_volumes.yaml
|   |   |   |   |-- values_k8s_merge_spec.yaml
|   |   |   |   `-- values_listener_template.yaml
|   |   |   `-- values.yaml
|   |   `-- gha-runner-scale-set-controller
|   |       |-- Chart.yaml
|   |       |-- ci
|   |       |   `-- ci-values.yaml
|   |       |-- crds
|   |       |   |-- actions.github.com_autoscalinglisteners.yaml
|   |       |   |-- actions.github.com_autoscalingrunnersets.yaml
|   |       |   |-- actions.github.com_ephemeralrunners.yaml
|   |       |   `-- actions.github.com_ephemeralrunnersets.yaml
|   |       |-- templates
|   |       |   |-- NOTES.txt
|   |       |   |-- _helpers.tpl
|   |       |   |-- deployment.yaml
|   |       |   |-- leader_election_role.yaml
|   |       |   |-- leader_election_role_binding.yaml
|   |       |   |-- manager_cluster_role.yaml
|   |       |   |-- manager_cluster_role_binding.yaml
|   |       |   |-- manager_listener_role.yaml
|   |       |   |-- manager_listener_role_binding.yaml
|   |       |   |-- manager_single_namespace_controller_role.yaml
|   |       |   |-- manager_single_namespace_controller_role_binding.yaml
|   |       |   |-- manager_single_namespace_watch_role.yaml
|   |       |   |-- manager_single_namespace_watch_role_binding.yaml
|   |       |   `-- serviceaccount.yaml
|   |       |-- tests
|   |       |   `-- template_test.go
|   |       `-- values.yaml
|   |-- cmd
|   |   |-- actionsmetricsserver
|   |   |   `-- main.go
|   |   |-- ghalistener
|   |   |   |-- app
|   |   |   |   |-- app.go
|   |   |   |   |-- app_test.go
|   |   |   |   `-- mocks
|   |   |   |       |-- listener.go
|   |   |   |       `-- worker.go
|   |   |   |-- config
|   |   |   |   |-- config.go
|   |   |   |   |-- config_client_test.go
|   |   |   |   `-- config_validation_test.go
|   |   |   |-- listener
|   |   |   |   |-- listener.go
|   |   |   |   |-- listener_test.go
|   |   |   |   |-- metrics_test.go
|   |   |   |   `-- mocks
|   |   |   |       |-- client.go
|   |   |   |       `-- handler.go
|   |   |   |-- main.go
|   |   |   |-- metrics
|   |   |   |   |-- metrics.go
|   |   |   |   |-- metrics_test.go
|   |   |   |   `-- mocks
|   |   |   |       |-- publisher.go
|   |   |   |       `-- server_publisher.go
|   |   |   `-- worker
|   |   |       |-- worker.go
|   |   |       `-- worker_test.go
|   |   |-- githubwebhookserver
|   |   |   `-- main.go
|   |   `-- sleep
|   |       `-- main.go
|   |-- config
|   |   |-- certmanager
|   |   |   |-- certificate.yaml
|   |   |   |-- kustomization.yaml
|   |   |   `-- kustomizeconfig.yaml
|   |   |-- crd
|   |   |   |-- bases
|   |   |   |   |-- actions.github.com_autoscalinglisteners.yaml
|   |   |   |   |-- actions.github.com_autoscalingrunnersets.yaml
|   |   |   |   |-- actions.github.com_ephemeralrunners.yaml
|   |   |   |   |-- actions.github.com_ephemeralrunnersets.yaml
|   |   |   |   |-- actions.summerwind.dev_horizontalrunnerautoscalers.yaml
|   |   |   |   |-- actions.summerwind.dev_runnerdeployments.yaml
|   |   |   |   |-- actions.summerwind.dev_runnerreplicasets.yaml
|   |   |   |   |-- actions.summerwind.dev_runners.yaml
|   |   |   |   `-- actions.summerwind.dev_runnersets.yaml
|   |   |   |-- kustomization.yaml
|   |   |   |-- kustomizeconfig.yaml
|   |   |   `-- patches
|   |   |       |-- cainjection_in_runners.yaml
|   |   |       `-- webhook_in_runners.yaml
|   |   |-- default
|   |   |   |-- kustomization.yaml
|   |   |   |-- manager_auth_proxy_patch.yaml
|   |   |   |-- manager_webhook_patch.yaml
|   |   |   `-- webhookcainjection_patch.yaml
|   |   |-- github-webhook-server
|   |   |   |-- deployment.yaml
|   |   |   |-- gh-webhook-server-auth-proxy-patch.yaml
|   |   |   |-- kustomization.yaml
|   |   |   |-- rbac.yaml
|   |   |   `-- service.yaml
|   |   |-- manager
|   |   |   |-- env-replacement.yaml
|   |   |   |-- kustomization.yaml
|   |   |   `-- manager.yaml
|   |   |-- prometheus
|   |   |   |-- kustomization.yaml
|   |   |   `-- monitor.yaml
|   |   |-- rbac
|   |   |   |-- auth_proxy_role.yaml
|   |   |   |-- auth_proxy_role_binding.yaml
|   |   |   |-- auth_proxy_service.yaml
|   |   |   |-- autoscalinglistener_editor_role.yaml
|   |   |   |-- autoscalinglistener_viewer_role.yaml
|   |   |   |-- autoscalingrunnerset_editor_role.yaml
|   |   |   |-- autoscalingrunnerset_viewer_role.yaml
|   |   |   |-- ephemeralrunner_editor_role.yaml
|   |   |   |-- ephemeralrunner_viewer_role.yaml
|   |   |   |-- ephemeralrunnerset_editor_role.yaml
|   |   |   |-- ephemeralrunnerset_viewer_role.yaml
|   |   |   |-- kustomization.yaml
|   |   |   |-- leader_election_role.yaml
|   |   |   |-- leader_election_role_binding.yaml
|   |   |   |-- role.yaml
|   |   |   |-- role_binding.yaml
|   |   |   |-- runner_editor_role.yaml
|   |   |   `-- runner_viewer_role.yaml
|   |   |-- samples
|   |   |   |-- actions_v1alpha1_runner.yaml
|   |   |   |-- actions_v1alpha1_runnerdeployment.yaml
|   |   |   `-- actions_v1alpha1_runnerreplicaset.yaml
|   |   `-- webhook
|   |       |-- kustomization.yaml
|   |       |-- kustomizeconfig.yaml
|   |       |-- manifests.yaml
|   |       `-- service.yaml
|   |-- contrib
|   |   |-- README.md
|   |   `-- examples
|   |       |-- actions-runner
|   |       |   |-- Chart.yaml
|   |       |   |-- README.md
|   |       |   |-- templates
|   |       |   |   |-- _helpers.tpl
|   |       |   |   `-- deployment.yaml
|   |       |   `-- values.yaml
|   |       `-- terraform
|   |           |-- actions-runner-controller.tf
|   |           `-- cert-manager.tf
|   |-- controllers
|   |   |-- actions.github.com
|   |   |   |-- autoscalinglistener_controller.go
|   |   |   |-- autoscalinglistener_controller_test.go
|   |   |   |-- autoscalingrunnerset_controller.go
|   |   |   |-- autoscalingrunnerset_controller_test.go
|   |   |   |-- clientutil.go
|   |   |   |-- constants.go
|   |   |   |-- ephemeralrunner_controller.go
|   |   |   |-- ephemeralrunner_controller_test.go
|   |   |   |-- ephemeralrunnerset_controller.go
|   |   |   |-- ephemeralrunnerset_controller_test.go
|   |   |   |-- helpers_test.go
|   |   |   |-- indexer.go
|   |   |   |-- metrics
|   |   |   |   `-- metrics.go
|   |   |   |-- options.go
|   |   |   |-- resourcebuilder.go
|   |   |   |-- resourcebuilder_test.go
|   |   |   |-- secret_resolver.go
|   |   |   |-- suite_test.go
|   |   |   |-- utils.go
|   |   |   `-- utils_test.go
|   |   `-- actions.summerwind.net
|   |       |-- autoscaling.go
|   |       |-- autoscaling_test.go
|   |       |-- constants.go
|   |       |-- horizontal_runner_autoscaler_batch_scale.go
|   |       |-- horizontal_runner_autoscaler_batch_scale_test.go
|   |       |-- horizontal_runner_autoscaler_webhook.go
|   |       |-- horizontal_runner_autoscaler_webhook_test.go
|   |       |-- horizontal_runner_autoscaler_webhook_worker.go
|   |       |-- horizontal_runner_autoscaler_webhook_worker_test.go
|   |       |-- horizontalrunnerautoscaler_controller.go
|   |       |-- integration_test.go
|   |       |-- metrics
|   |       |   |-- horizontalrunnerautoscaler.go
|   |       |   |-- metrics.go
|   |       |   |-- runnerdeployment.go
|   |       |   `-- runnerset.go
|   |       |-- multi_githubclient.go
|   |       |-- new_runner_pod_test.go
|   |       |-- persistent_volume_claim_controller.go
|   |       |-- persistent_volume_controller.go
|   |       |-- pod_runner_token_injector.go
|   |       |-- runner_controller.go
|   |       |-- runner_graceful_stop.go
|   |       |-- runner_pod.go
|   |       |-- runner_pod_controller.go
|   |       |-- runner_pod_owner.go
|   |       |-- runnerdeployment_controller.go
|   |       |-- runnerdeployment_controller_test.go
|   |       |-- runnerreplicaset_controller.go
|   |       |-- runnerreplicaset_controller_test.go
|   |       |-- runnerset_controller.go
|   |       |-- schedule.go
|   |       |-- schedule_test.go
|   |       |-- suite_test.go
|   |       |-- sync_volumes.go
|   |       |-- testdata
|   |       |   |-- org_webhook_check_run_payload.json
|   |       |   |-- org_webhook_workflow_job_payload.json
|   |       |   |-- org_webhook_workflow_job_with_self_hosted_label_payload.json
|   |       |   `-- repo_webhook_check_run_payload.json
|   |       |-- testresourcereader.go
|   |       |-- testresourcereader_test.go
|   |       |-- utils.go
|   |       `-- utils_test.go
|   |-- docs
|   |   |-- about-arc.md
|   |   |-- adrs
|   |   |   |-- 2022-10-17-runner-image.md
|   |   |   |-- 2022-10-27-runnerscaleset-lifetime.md
|   |   |   |-- 2022-11-04-crd-api-group-name.md
|   |   |   |-- 2022-12-05-adding-labels-k8s-resources.md
|   |   |   |-- 2022-12-27-pick-the-right-runner-to-scale-down.md
|   |   |   |-- 2023-02-02-automate-runner-updates.md
|   |   |   |-- 2023-02-10-limit-manager-role-permission.md
|   |   |   |-- 2023-03-14-adding-labels-k8s-resources.md
|   |   |   |-- 2023-03-17-workflow-improvements.md
|   |   |   |-- 2023-04-11-limit-manager-role-permission.md
|   |   |   |-- 2023-05-08-exposing-metrics.md
|   |   |   |-- 2023-07-18-customize-listener-pod.md
|   |   |   |-- 2023-11-02-min-runners-semantics.md
|   |   |   `-- yyyy-mm-dd-TEMPLATE.md
|   |   |-- authenticating-to-the-github-api.md
|   |   |-- automatically-scaling-runners.md
|   |   |-- choosing-runner-destination.md
|   |   |-- configuring-windows-runners.md
|   |   |-- deploying-alternative-runners.md
|   |   |-- deploying-arc-runners.md
|   |   |-- gha-runner-scale-set-controller
|   |   |   |-- README.md
|   |   |   |-- arc-diagram-dark.png
|   |   |   |-- arc-diagram-light.png
|   |   |   |-- samples
|   |   |   |   `-- grafana-dashboard
|   |   |   |       |-- ARC-Autoscaling-Runner-Set-Monitoring.json
|   |   |   |       |-- README.md
|   |   |   |       `-- grafana-sample.png
|   |   |   `-- thumbnail.png
|   |   |-- installing-arc.md
|   |   |-- managing-access-with-runner-groups.md
|   |   |-- monitoring-and-troubleshooting.md
|   |   |-- quickstart.md
|   |   |-- releasenotes
|   |   |   |-- 0.22.md
|   |   |   |-- 0.23.md
|   |   |   |-- 0.24.md
|   |   |   |-- 0.25.md
|   |   |   |-- 0.26.md
|   |   |   |-- 0.27.md
|   |   |   `-- app-version-mapping.md
|   |   |-- using-arc-across-organizations.md
|   |   |-- using-arc-runners-in-a-workflow.md
|   |   |-- using-custom-volumes.md
|   |   `-- using-entrypoint-features.md
|   |-- github
|   |   |-- actions
|   |   |   |-- actions_server_test.go
|   |   |   |-- byte_order_mark_test.go
|   |   |   |-- client.go
|   |   |   |-- client_generate_jit_test.go
|   |   |   |-- client_job_acquisition_test.go
|   |   |   |-- client_proxy_test.go
|   |   |   |-- client_runner_scale_set_message_test.go
|   |   |   |-- client_runner_scale_set_session_test.go
|   |   |   |-- client_runner_scale_set_test.go
|   |   |   |-- client_runner_test.go
|   |   |   |-- client_tls_test.go
|   |   |   |-- config.go
|   |   |   |-- config_test.go
|   |   |   |-- errors.go
|   |   |   |-- errors_test.go
|   |   |   |-- fake
|   |   |   |   |-- client.go
|   |   |   |   `-- multi_client.go
|   |   |   |-- github_api_request_test.go
|   |   |   |-- identifier_test.go
|   |   |   |-- mock_ActionsService.go
|   |   |   |-- mock_SessionService.go
|   |   |   |-- multi_client.go
|   |   |   |-- multi_client_test.go
|   |   |   |-- sessionservice.go
|   |   |   |-- testdata
|   |   |   |   |-- generate.sh
|   |   |   |   |-- intermediate.crt
|   |   |   |   |-- leaf.crt
|   |   |   |   |-- leaf.key
|   |   |   |   |-- rootCA.crt
|   |   |   |   |-- server.crt
|   |   |   |   `-- server.key
|   |   |   |-- testserver
|   |   |   |   `-- server.go
|   |   |   |-- types.go
|   |   |   `-- user_agent_test.go
|   |   |-- fake
|   |   |   |-- fake.go
|   |   |   |-- options.go
|   |   |   `-- runners.go
|   |   |-- github.go
|   |   |-- github_test.go
|   |   `-- metrics
|   |       `-- transport.go
|   |-- go.mod
|   |-- go.sum
|   |-- hack
|   |   |-- boilerplate.go.txt
|   |   |-- check-gh-chart-versions.sh
|   |   |-- make-env.sh
|   |   `-- signrel
|   |       |-- README.md
|   |       |-- go.mod
|   |       `-- main.go
|   |-- hash
|   |   |-- fnv.go
|   |   `-- hash.go
|   |-- logging
|   |   |-- logger.go
|   |   `-- transport.go
|   |-- main.go
|   |-- pkg
|   |   |-- actionsglob
|   |   |   |-- README.md
|   |   |   |-- actionsglob.go
|   |   |   `-- match_test.go
|   |   |-- actionsmetrics
|   |   |   |-- event_reader.go
|   |   |   |-- metrics.go
|   |   |   `-- webhookserver.go
|   |   |-- githubwebhookdeliveryforwarder
|   |   |   |-- cmd
|   |   |   |   `-- main.go
|   |   |   `-- githubwebhookdelivery.go
|   |   `-- hookdeliveryforwarder
|   |       |-- README.md
|   |       |-- checkpointer.go
|   |       |-- cmd
|   |       |   `-- main.go
|   |       |-- config.go
|   |       |-- configmap
|   |       |   |-- checkpointer.go
|   |       |   `-- config.go
|   |       |-- forwarder.go
|   |       |-- hooks.go
|   |       |-- hooks_deliveries.go
|   |       |-- logger.go
|   |       |-- multiforwarder.go
|   |       `-- signal.go
|   |-- runner
|   |   |-- Makefile
|   |   |-- VERSION
|   |   |-- actions-runner-dind-rootless.ubuntu-20.04.dockerfile
|   |   |-- actions-runner-dind-rootless.ubuntu-22.04.dockerfile
|   |   |-- actions-runner-dind.ubuntu-20.04.dockerfile
|   |   |-- actions-runner-dind.ubuntu-22.04.dockerfile
|   |   |-- actions-runner.ubuntu-20.04.dockerfile
|   |   |-- actions-runner.ubuntu-22.04.dockerfile
|   |   |-- docker-shim.sh
|   |   |-- entrypoint-dind-rootless.sh
|   |   |-- entrypoint-dind.sh
|   |   |-- entrypoint.sh
|   |   |-- graceful-stop.sh
|   |   |-- hooks
|   |   |   |-- job-completed.d
|   |   |   |   `-- update-status
|   |   |   |-- job-completed.sh
|   |   |   |-- job-started.d
|   |   |   |   `-- update-status
|   |   |   `-- job-started.sh
|   |   |-- logger.sh
|   |   |-- startup.sh
|   |   |-- update-status
|   |   `-- wait.sh
|   |-- simulator
|   |   |-- runnergroup_visibility.go
|   |   |-- runnergroups.go
|   |   `-- runnergroups_test.go
|   |-- test
|   |   |-- e2e
|   |   |   |-- cmd
|   |   |   |   `-- main.go
|   |   |   `-- e2e_test.go
|   |   |-- platforms
|   |   |   |-- aws-eks
|   |   |   |   |-- README.md
|   |   |   |   |-- main.tf
|   |   |   |   |-- outputs.tf
|   |   |   |   `-- terraform.tf
|   |   |   |-- azure-aks
|   |   |   `-- gcp-gks
|   |   `-- startup
|   |       |-- assets
|   |       |   |-- config.sh
|   |       |   |-- logging.sh
|   |       |   `-- run.sh
|   |       |-- should_retry_configuring
|   |       |   `-- test.sh
|   |       |-- should_work_non_ephemeral
|   |       |   `-- test.sh
|   |       |-- should_work_normally
|   |       |   `-- test.sh
|   |       |-- should_work_use_disable_update_switch
|   |       |   `-- test.sh
|   |       `-- test.sh
|   |-- test_e2e_arc
|   |   `-- arc_jobs_test.go
|   |-- testing
|   |   |-- bash.go
|   |   |-- docker.go
|   |   |-- getenv.go
|   |   |-- git.go
|   |   |-- kubectl.go
|   |   |-- random.go
|   |   |-- runtime
|   |   |   `-- runtime.go
|   |   |-- testing.go
|   |   `-- workflow.go
|   `-- vault
|       |-- azurekeyvault
|       |   |-- azurekeyvault.go
|       |   |-- config.go
|       |   |-- config_test.go
|       |   `-- testdata
|       |       `-- server.crt
|       `-- vault.go
|-- app
|   |-- Dockerfile
|   |-- __init__.py
|   |-- __pycache__
|   |   |-- __init__.cpython-310.pyc
|   |   `-- app.cpython-310.pyc
|   |-- app.py
|   |-- config.py
|   |-- static
|   |   |-- generated_essay.docx
|   |   |-- generated_image.png
|   |   `-- style.css
|   `-- templates
|       |-- audio.html
|       |-- chatbot.html
|       |-- essay.html
|       |-- image.html
|       |-- index.html
|       |-- layout.html
|       `-- summary.html
|-- bot_venv
|   |-- Include
|   |-- Lib
|   |   `-- site-packages
|   |       |-- MarkupSafe-3.0.2.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- LICENSE.txt
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- top_level.txt
|   |       |-- __pycache__
|   |       |   `-- typing_extensions.cpython-310.pyc
|   |       |-- _distutils_hack
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   `-- override.cpython-310.pyc
|   |       |   `-- override.py
|   |       |-- aiohappyeyeballs
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _staggered.cpython-310.pyc
|   |       |   |   |-- impl.cpython-310.pyc
|   |       |   |   |-- types.cpython-310.pyc
|   |       |   |   `-- utils.cpython-310.pyc
|   |       |   |-- _staggered.py
|   |       |   |-- impl.py
|   |       |   |-- py.typed
|   |       |   |-- types.py
|   |       |   `-- utils.py
|   |       |-- aiohappyeyeballs-2.6.1.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- LICENSE
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   `-- WHEEL
|   |       |-- aiohttp
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _cookie_helpers.cpython-310.pyc
|   |       |   |   |-- abc.cpython-310.pyc
|   |       |   |   |-- base_protocol.cpython-310.pyc
|   |       |   |   |-- client.cpython-310.pyc
|   |       |   |   |-- client_exceptions.cpython-310.pyc
|   |       |   |   |-- client_middleware_digest_auth.cpython-310.pyc
|   |       |   |   |-- client_middlewares.cpython-310.pyc
|   |       |   |   |-- client_proto.cpython-310.pyc
|   |       |   |   |-- client_reqrep.cpython-310.pyc
|   |       |   |   |-- client_ws.cpython-310.pyc
|   |       |   |   |-- compression_utils.cpython-310.pyc
|   |       |   |   |-- connector.cpython-310.pyc
|   |       |   |   |-- cookiejar.cpython-310.pyc
|   |       |   |   |-- formdata.cpython-310.pyc
|   |       |   |   |-- hdrs.cpython-310.pyc
|   |       |   |   |-- helpers.cpython-310.pyc
|   |       |   |   |-- http.cpython-310.pyc
|   |       |   |   |-- http_exceptions.cpython-310.pyc
|   |       |   |   |-- http_parser.cpython-310.pyc
|   |       |   |   |-- http_websocket.cpython-310.pyc
|   |       |   |   |-- http_writer.cpython-310.pyc
|   |       |   |   |-- log.cpython-310.pyc
|   |       |   |   |-- multipart.cpython-310.pyc
|   |       |   |   |-- payload.cpython-310.pyc
|   |       |   |   |-- payload_streamer.cpython-310.pyc
|   |       |   |   |-- pytest_plugin.cpython-310.pyc
|   |       |   |   |-- resolver.cpython-310.pyc
|   |       |   |   |-- streams.cpython-310.pyc
|   |       |   |   |-- tcp_helpers.cpython-310.pyc
|   |       |   |   |-- test_utils.cpython-310.pyc
|   |       |   |   |-- tracing.cpython-310.pyc
|   |       |   |   |-- typedefs.cpython-310.pyc
|   |       |   |   |-- web.cpython-310.pyc
|   |       |   |   |-- web_app.cpython-310.pyc
|   |       |   |   |-- web_exceptions.cpython-310.pyc
|   |       |   |   |-- web_fileresponse.cpython-310.pyc
|   |       |   |   |-- web_log.cpython-310.pyc
|   |       |   |   |-- web_middlewares.cpython-310.pyc
|   |       |   |   |-- web_protocol.cpython-310.pyc
|   |       |   |   |-- web_request.cpython-310.pyc
|   |       |   |   |-- web_response.cpython-310.pyc
|   |       |   |   |-- web_routedef.cpython-310.pyc
|   |       |   |   |-- web_runner.cpython-310.pyc
|   |       |   |   |-- web_server.cpython-310.pyc
|   |       |   |   |-- web_urldispatcher.cpython-310.pyc
|   |       |   |   |-- web_ws.cpython-310.pyc
|   |       |   |   `-- worker.cpython-310.pyc
|   |       |   |-- _cookie_helpers.py
|   |       |   |-- _cparser.pxd
|   |       |   |-- _find_header.pxd
|   |       |   |-- _headers.pxi
|   |       |   |-- _http_parser.cp310-win_amd64.pyd
|   |       |   |-- _http_parser.pyx
|   |       |   |-- _http_writer.cp310-win_amd64.pyd
|   |       |   |-- _http_writer.pyx
|   |       |   |-- _websocket
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- helpers.cpython-310.pyc
|   |       |   |   |   |-- models.cpython-310.pyc
|   |       |   |   |   |-- reader.cpython-310.pyc
|   |       |   |   |   |-- reader_c.cpython-310.pyc
|   |       |   |   |   |-- reader_py.cpython-310.pyc
|   |       |   |   |   `-- writer.cpython-310.pyc
|   |       |   |   |-- helpers.py
|   |       |   |   |-- mask.cp310-win_amd64.pyd
|   |       |   |   |-- mask.pxd
|   |       |   |   |-- mask.pyx
|   |       |   |   |-- models.py
|   |       |   |   |-- reader.py
|   |       |   |   |-- reader_c.cp310-win_amd64.pyd
|   |       |   |   |-- reader_c.pxd
|   |       |   |   |-- reader_c.py
|   |       |   |   |-- reader_py.py
|   |       |   |   `-- writer.py
|   |       |   |-- abc.py
|   |       |   |-- base_protocol.py
|   |       |   |-- client.py
|   |       |   |-- client_exceptions.py
|   |       |   |-- client_middleware_digest_auth.py
|   |       |   |-- client_middlewares.py
|   |       |   |-- client_proto.py
|   |       |   |-- client_reqrep.py
|   |       |   |-- client_ws.py
|   |       |   |-- compression_utils.py
|   |       |   |-- connector.py
|   |       |   |-- cookiejar.py
|   |       |   |-- formdata.py
|   |       |   |-- hdrs.py
|   |       |   |-- helpers.py
|   |       |   |-- http.py
|   |       |   |-- http_exceptions.py
|   |       |   |-- http_parser.py
|   |       |   |-- http_websocket.py
|   |       |   |-- http_writer.py
|   |       |   |-- log.py
|   |       |   |-- multipart.py
|   |       |   |-- payload.py
|   |       |   |-- payload_streamer.py
|   |       |   |-- py.typed
|   |       |   |-- pytest_plugin.py
|   |       |   |-- resolver.py
|   |       |   |-- streams.py
|   |       |   |-- tcp_helpers.py
|   |       |   |-- test_utils.py
|   |       |   |-- tracing.py
|   |       |   |-- typedefs.py
|   |       |   |-- web.py
|   |       |   |-- web_app.py
|   |       |   |-- web_exceptions.py
|   |       |   |-- web_fileresponse.py
|   |       |   |-- web_log.py
|   |       |   |-- web_middlewares.py
|   |       |   |-- web_protocol.py
|   |       |   |-- web_request.py
|   |       |   |-- web_response.py
|   |       |   |-- web_routedef.py
|   |       |   |-- web_runner.py
|   |       |   |-- web_server.py
|   |       |   |-- web_urldispatcher.py
|   |       |   |-- web_ws.py
|   |       |   `-- worker.py
|   |       |-- aiohttp-3.12.13.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- licenses
|   |       |   |   `-- LICENSE.txt
|   |       |   `-- top_level.txt
|   |       |-- aiosignal
|   |       |   |-- __init__.py
|   |       |   |-- __init__.pyi
|   |       |   |-- __pycache__
|   |       |   |   `-- __init__.cpython-310.pyc
|   |       |   `-- py.typed
|   |       |-- aiosignal-1.3.2.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- LICENSE
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- top_level.txt
|   |       |-- annotated_types
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   `-- test_cases.cpython-310.pyc
|   |       |   |-- py.typed
|   |       |   `-- test_cases.py
|   |       |-- annotated_types-0.7.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- licenses
|   |       |       `-- LICENSE
|   |       |-- anyio
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- from_thread.cpython-310.pyc
|   |       |   |   |-- lowlevel.cpython-310.pyc
|   |       |   |   |-- pytest_plugin.cpython-310.pyc
|   |       |   |   |-- to_interpreter.cpython-310.pyc
|   |       |   |   |-- to_process.cpython-310.pyc
|   |       |   |   `-- to_thread.cpython-310.pyc
|   |       |   |-- _backends
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- _asyncio.cpython-310.pyc
|   |       |   |   |   `-- _trio.cpython-310.pyc
|   |       |   |   |-- _asyncio.py
|   |       |   |   `-- _trio.py
|   |       |   |-- _core
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- _asyncio_selector_thread.cpython-310.pyc
|   |       |   |   |   |-- _eventloop.cpython-310.pyc
|   |       |   |   |   |-- _exceptions.cpython-310.pyc
|   |       |   |   |   |-- _fileio.cpython-310.pyc
|   |       |   |   |   |-- _resources.cpython-310.pyc
|   |       |   |   |   |-- _signals.cpython-310.pyc
|   |       |   |   |   |-- _sockets.cpython-310.pyc
|   |       |   |   |   |-- _streams.cpython-310.pyc
|   |       |   |   |   |-- _subprocesses.cpython-310.pyc
|   |       |   |   |   |-- _synchronization.cpython-310.pyc
|   |       |   |   |   |-- _tasks.cpython-310.pyc
|   |       |   |   |   |-- _tempfile.cpython-310.pyc
|   |       |   |   |   |-- _testing.cpython-310.pyc
|   |       |   |   |   `-- _typedattr.cpython-310.pyc
|   |       |   |   |-- _asyncio_selector_thread.py
|   |       |   |   |-- _eventloop.py
|   |       |   |   |-- _exceptions.py
|   |       |   |   |-- _fileio.py
|   |       |   |   |-- _resources.py
|   |       |   |   |-- _signals.py
|   |       |   |   |-- _sockets.py
|   |       |   |   |-- _streams.py
|   |       |   |   |-- _subprocesses.py
|   |       |   |   |-- _synchronization.py
|   |       |   |   |-- _tasks.py
|   |       |   |   |-- _tempfile.py
|   |       |   |   |-- _testing.py
|   |       |   |   `-- _typedattr.py
|   |       |   |-- abc
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- _eventloop.cpython-310.pyc
|   |       |   |   |   |-- _resources.cpython-310.pyc
|   |       |   |   |   |-- _sockets.cpython-310.pyc
|   |       |   |   |   |-- _streams.cpython-310.pyc
|   |       |   |   |   |-- _subprocesses.cpython-310.pyc
|   |       |   |   |   |-- _tasks.cpython-310.pyc
|   |       |   |   |   `-- _testing.cpython-310.pyc
|   |       |   |   |-- _eventloop.py
|   |       |   |   |-- _resources.py
|   |       |   |   |-- _sockets.py
|   |       |   |   |-- _streams.py
|   |       |   |   |-- _subprocesses.py
|   |       |   |   |-- _tasks.py
|   |       |   |   `-- _testing.py
|   |       |   |-- from_thread.py
|   |       |   |-- lowlevel.py
|   |       |   |-- py.typed
|   |       |   |-- pytest_plugin.py
|   |       |   |-- streams
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- buffered.cpython-310.pyc
|   |       |   |   |   |-- file.cpython-310.pyc
|   |       |   |   |   |-- memory.cpython-310.pyc
|   |       |   |   |   |-- stapled.cpython-310.pyc
|   |       |   |   |   |-- text.cpython-310.pyc
|   |       |   |   |   `-- tls.cpython-310.pyc
|   |       |   |   |-- buffered.py
|   |       |   |   |-- file.py
|   |       |   |   |-- memory.py
|   |       |   |   |-- stapled.py
|   |       |   |   |-- text.py
|   |       |   |   `-- tls.py
|   |       |   |-- to_interpreter.py
|   |       |   |-- to_process.py
|   |       |   `-- to_thread.py
|   |       |-- anyio-4.9.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- LICENSE
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- entry_points.txt
|   |       |   `-- top_level.txt
|   |       |-- async_timeout
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   `-- __init__.cpython-310.pyc
|   |       |   `-- py.typed
|   |       |-- async_timeout-5.0.1.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- LICENSE
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- top_level.txt
|   |       |   `-- zip-safe
|   |       |-- attr
|   |       |   |-- __init__.py
|   |       |   |-- __init__.pyi
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _cmp.cpython-310.pyc
|   |       |   |   |-- _compat.cpython-310.pyc
|   |       |   |   |-- _config.cpython-310.pyc
|   |       |   |   |-- _funcs.cpython-310.pyc
|   |       |   |   |-- _make.cpython-310.pyc
|   |       |   |   |-- _next_gen.cpython-310.pyc
|   |       |   |   |-- _version_info.cpython-310.pyc
|   |       |   |   |-- converters.cpython-310.pyc
|   |       |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |-- filters.cpython-310.pyc
|   |       |   |   |-- setters.cpython-310.pyc
|   |       |   |   `-- validators.cpython-310.pyc
|   |       |   |-- _cmp.py
|   |       |   |-- _cmp.pyi
|   |       |   |-- _compat.py
|   |       |   |-- _config.py
|   |       |   |-- _funcs.py
|   |       |   |-- _make.py
|   |       |   |-- _next_gen.py
|   |       |   |-- _typing_compat.pyi
|   |       |   |-- _version_info.py
|   |       |   |-- _version_info.pyi
|   |       |   |-- converters.py
|   |       |   |-- converters.pyi
|   |       |   |-- exceptions.py
|   |       |   |-- exceptions.pyi
|   |       |   |-- filters.py
|   |       |   |-- filters.pyi
|   |       |   |-- py.typed
|   |       |   |-- setters.py
|   |       |   |-- setters.pyi
|   |       |   |-- validators.py
|   |       |   `-- validators.pyi
|   |       |-- attrs
|   |       |   |-- __init__.py
|   |       |   |-- __init__.pyi
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- converters.cpython-310.pyc
|   |       |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |-- filters.cpython-310.pyc
|   |       |   |   |-- setters.cpython-310.pyc
|   |       |   |   `-- validators.cpython-310.pyc
|   |       |   |-- converters.py
|   |       |   |-- exceptions.py
|   |       |   |-- filters.py
|   |       |   |-- py.typed
|   |       |   |-- setters.py
|   |       |   `-- validators.py
|   |       |-- attrs-25.3.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- licenses
|   |       |       `-- LICENSE
|   |       |-- blinker
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _utilities.cpython-310.pyc
|   |       |   |   `-- base.cpython-310.pyc
|   |       |   |-- _utilities.py
|   |       |   |-- base.py
|   |       |   `-- py.typed
|   |       |-- blinker-1.9.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- LICENSE.txt
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   `-- WHEEL
|   |       |-- certifi
|   |       |   |-- __init__.py
|   |       |   |-- __main__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- __main__.cpython-310.pyc
|   |       |   |   `-- core.cpython-310.pyc
|   |       |   |-- cacert.pem
|   |       |   |-- core.py
|   |       |   `-- py.typed
|   |       |-- certifi-2025.6.15.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- licenses
|   |       |   |   `-- LICENSE
|   |       |   `-- top_level.txt
|   |       |-- charset_normalizer
|   |       |   |-- __init__.py
|   |       |   |-- __main__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- __main__.cpython-310.pyc
|   |       |   |   |-- api.cpython-310.pyc
|   |       |   |   |-- cd.cpython-310.pyc
|   |       |   |   |-- constant.cpython-310.pyc
|   |       |   |   |-- legacy.cpython-310.pyc
|   |       |   |   |-- md.cpython-310.pyc
|   |       |   |   |-- models.cpython-310.pyc
|   |       |   |   |-- utils.cpython-310.pyc
|   |       |   |   `-- version.cpython-310.pyc
|   |       |   |-- api.py
|   |       |   |-- cd.py
|   |       |   |-- cli
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __main__.py
|   |       |   |   `-- __pycache__
|   |       |   |       |-- __init__.cpython-310.pyc
|   |       |   |       `-- __main__.cpython-310.pyc
|   |       |   |-- constant.py
|   |       |   |-- legacy.py
|   |       |   |-- md.cp310-win_amd64.pyd
|   |       |   |-- md.py
|   |       |   |-- md__mypyc.cp310-win_amd64.pyd
|   |       |   |-- models.py
|   |       |   |-- py.typed
|   |       |   |-- utils.py
|   |       |   `-- version.py
|   |       |-- charset_normalizer-3.4.2.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- entry_points.txt
|   |       |   |-- licenses
|   |       |   |   `-- LICENSE
|   |       |   `-- top_level.txt
|   |       |-- click
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _compat.cpython-310.pyc
|   |       |   |   |-- _termui_impl.cpython-310.pyc
|   |       |   |   |-- _textwrap.cpython-310.pyc
|   |       |   |   |-- _winconsole.cpython-310.pyc
|   |       |   |   |-- core.cpython-310.pyc
|   |       |   |   |-- decorators.cpython-310.pyc
|   |       |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |-- formatting.cpython-310.pyc
|   |       |   |   |-- globals.cpython-310.pyc
|   |       |   |   |-- parser.cpython-310.pyc
|   |       |   |   |-- shell_completion.cpython-310.pyc
|   |       |   |   |-- termui.cpython-310.pyc
|   |       |   |   |-- testing.cpython-310.pyc
|   |       |   |   |-- types.cpython-310.pyc
|   |       |   |   `-- utils.cpython-310.pyc
|   |       |   |-- _compat.py
|   |       |   |-- _termui_impl.py
|   |       |   |-- _textwrap.py
|   |       |   |-- _winconsole.py
|   |       |   |-- core.py
|   |       |   |-- decorators.py
|   |       |   |-- exceptions.py
|   |       |   |-- formatting.py
|   |       |   |-- globals.py
|   |       |   |-- parser.py
|   |       |   |-- py.typed
|   |       |   |-- shell_completion.py
|   |       |   |-- termui.py
|   |       |   |-- testing.py
|   |       |   |-- types.py
|   |       |   `-- utils.py
|   |       |-- click-8.2.1.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- licenses
|   |       |       `-- LICENSE.txt
|   |       |-- colorama
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- ansi.cpython-310.pyc
|   |       |   |   |-- ansitowin32.cpython-310.pyc
|   |       |   |   |-- initialise.cpython-310.pyc
|   |       |   |   |-- win32.cpython-310.pyc
|   |       |   |   `-- winterm.cpython-310.pyc
|   |       |   |-- ansi.py
|   |       |   |-- ansitowin32.py
|   |       |   |-- initialise.py
|   |       |   |-- tests
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- ansi_test.cpython-310.pyc
|   |       |   |   |   |-- ansitowin32_test.cpython-310.pyc
|   |       |   |   |   |-- initialise_test.cpython-310.pyc
|   |       |   |   |   |-- isatty_test.cpython-310.pyc
|   |       |   |   |   |-- utils.cpython-310.pyc
|   |       |   |   |   `-- winterm_test.cpython-310.pyc
|   |       |   |   |-- ansi_test.py
|   |       |   |   |-- ansitowin32_test.py
|   |       |   |   |-- initialise_test.py
|   |       |   |   |-- isatty_test.py
|   |       |   |   |-- utils.py
|   |       |   |   `-- winterm_test.py
|   |       |   |-- win32.py
|   |       |   `-- winterm.py
|   |       |-- colorama-0.4.6.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- licenses
|   |       |       `-- LICENSE.txt
|   |       |-- distro
|   |       |   |-- __init__.py
|   |       |   |-- __main__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- __main__.cpython-310.pyc
|   |       |   |   `-- distro.cpython-310.pyc
|   |       |   |-- distro.py
|   |       |   `-- py.typed
|   |       |-- distro-1.9.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- LICENSE
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- entry_points.txt
|   |       |   `-- top_level.txt
|   |       |-- distutils-precedence.pth
|   |       |-- docx
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- api.cpython-310.pyc
|   |       |   |   |-- blkcntnr.cpython-310.pyc
|   |       |   |   |-- comments.cpython-310.pyc
|   |       |   |   |-- document.cpython-310.pyc
|   |       |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |-- package.cpython-310.pyc
|   |       |   |   |-- section.cpython-310.pyc
|   |       |   |   |-- settings.cpython-310.pyc
|   |       |   |   |-- shape.cpython-310.pyc
|   |       |   |   |-- shared.cpython-310.pyc
|   |       |   |   |-- table.cpython-310.pyc
|   |       |   |   `-- types.cpython-310.pyc
|   |       |   |-- api.py
|   |       |   |-- blkcntnr.py
|   |       |   |-- comments.py
|   |       |   |-- dml
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   `-- color.cpython-310.pyc
|   |       |   |   `-- color.py
|   |       |   |-- document.py
|   |       |   |-- drawing
|   |       |   |   |-- __init__.py
|   |       |   |   `-- __pycache__
|   |       |   |       `-- __init__.cpython-310.pyc
|   |       |   |-- enum
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- base.cpython-310.pyc
|   |       |   |   |   |-- dml.cpython-310.pyc
|   |       |   |   |   |-- section.cpython-310.pyc
|   |       |   |   |   |-- shape.cpython-310.pyc
|   |       |   |   |   |-- style.cpython-310.pyc
|   |       |   |   |   |-- table.cpython-310.pyc
|   |       |   |   |   `-- text.cpython-310.pyc
|   |       |   |   |-- base.py
|   |       |   |   |-- dml.py
|   |       |   |   |-- section.py
|   |       |   |   |-- shape.py
|   |       |   |   |-- style.py
|   |       |   |   |-- table.py
|   |       |   |   `-- text.py
|   |       |   |-- exceptions.py
|   |       |   |-- image
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- bmp.cpython-310.pyc
|   |       |   |   |   |-- constants.cpython-310.pyc
|   |       |   |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |   |-- gif.cpython-310.pyc
|   |       |   |   |   |-- helpers.cpython-310.pyc
|   |       |   |   |   |-- image.cpython-310.pyc
|   |       |   |   |   |-- jpeg.cpython-310.pyc
|   |       |   |   |   |-- png.cpython-310.pyc
|   |       |   |   |   `-- tiff.cpython-310.pyc
|   |       |   |   |-- bmp.py
|   |       |   |   |-- constants.py
|   |       |   |   |-- exceptions.py
|   |       |   |   |-- gif.py
|   |       |   |   |-- helpers.py
|   |       |   |   |-- image.py
|   |       |   |   |-- jpeg.py
|   |       |   |   |-- png.py
|   |       |   |   `-- tiff.py
|   |       |   |-- opc
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- constants.cpython-310.pyc
|   |       |   |   |   |-- coreprops.cpython-310.pyc
|   |       |   |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |   |-- oxml.cpython-310.pyc
|   |       |   |   |   |-- package.cpython-310.pyc
|   |       |   |   |   |-- packuri.cpython-310.pyc
|   |       |   |   |   |-- part.cpython-310.pyc
|   |       |   |   |   |-- phys_pkg.cpython-310.pyc
|   |       |   |   |   |-- pkgreader.cpython-310.pyc
|   |       |   |   |   |-- pkgwriter.cpython-310.pyc
|   |       |   |   |   |-- rel.cpython-310.pyc
|   |       |   |   |   |-- shared.cpython-310.pyc
|   |       |   |   |   `-- spec.cpython-310.pyc
|   |       |   |   |-- constants.py
|   |       |   |   |-- coreprops.py
|   |       |   |   |-- exceptions.py
|   |       |   |   |-- oxml.py
|   |       |   |   |-- package.py
|   |       |   |   |-- packuri.py
|   |       |   |   |-- part.py
|   |       |   |   |-- parts
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   `-- coreprops.cpython-310.pyc
|   |       |   |   |   `-- coreprops.py
|   |       |   |   |-- phys_pkg.py
|   |       |   |   |-- pkgreader.py
|   |       |   |   |-- pkgwriter.py
|   |       |   |   |-- rel.py
|   |       |   |   |-- shared.py
|   |       |   |   `-- spec.py
|   |       |   |-- oxml
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- comments.cpython-310.pyc
|   |       |   |   |   |-- coreprops.cpython-310.pyc
|   |       |   |   |   |-- document.cpython-310.pyc
|   |       |   |   |   |-- drawing.cpython-310.pyc
|   |       |   |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |   |-- ns.cpython-310.pyc
|   |       |   |   |   |-- numbering.cpython-310.pyc
|   |       |   |   |   |-- parser.cpython-310.pyc
|   |       |   |   |   |-- section.cpython-310.pyc
|   |       |   |   |   |-- settings.cpython-310.pyc
|   |       |   |   |   |-- shape.cpython-310.pyc
|   |       |   |   |   |-- shared.cpython-310.pyc
|   |       |   |   |   |-- simpletypes.cpython-310.pyc
|   |       |   |   |   |-- styles.cpython-310.pyc
|   |       |   |   |   |-- table.cpython-310.pyc
|   |       |   |   |   `-- xmlchemy.cpython-310.pyc
|   |       |   |   |-- comments.py
|   |       |   |   |-- coreprops.py
|   |       |   |   |-- document.py
|   |       |   |   |-- drawing.py
|   |       |   |   |-- exceptions.py
|   |       |   |   |-- ns.py
|   |       |   |   |-- numbering.py
|   |       |   |   |-- parser.py
|   |       |   |   |-- section.py
|   |       |   |   |-- settings.py
|   |       |   |   |-- shape.py
|   |       |   |   |-- shared.py
|   |       |   |   |-- simpletypes.py
|   |       |   |   |-- styles.py
|   |       |   |   |-- table.py
|   |       |   |   |-- text
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- font.cpython-310.pyc
|   |       |   |   |   |   |-- hyperlink.cpython-310.pyc
|   |       |   |   |   |   |-- pagebreak.cpython-310.pyc
|   |       |   |   |   |   |-- paragraph.cpython-310.pyc
|   |       |   |   |   |   |-- parfmt.cpython-310.pyc
|   |       |   |   |   |   `-- run.cpython-310.pyc
|   |       |   |   |   |-- font.py
|   |       |   |   |   |-- hyperlink.py
|   |       |   |   |   |-- pagebreak.py
|   |       |   |   |   |-- paragraph.py
|   |       |   |   |   |-- parfmt.py
|   |       |   |   |   `-- run.py
|   |       |   |   `-- xmlchemy.py
|   |       |   |-- package.py
|   |       |   |-- parts
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- comments.cpython-310.pyc
|   |       |   |   |   |-- document.cpython-310.pyc
|   |       |   |   |   |-- hdrftr.cpython-310.pyc
|   |       |   |   |   |-- image.cpython-310.pyc
|   |       |   |   |   |-- numbering.cpython-310.pyc
|   |       |   |   |   |-- settings.cpython-310.pyc
|   |       |   |   |   |-- story.cpython-310.pyc
|   |       |   |   |   `-- styles.cpython-310.pyc
|   |       |   |   |-- comments.py
|   |       |   |   |-- document.py
|   |       |   |   |-- hdrftr.py
|   |       |   |   |-- image.py
|   |       |   |   |-- numbering.py
|   |       |   |   |-- settings.py
|   |       |   |   |-- story.py
|   |       |   |   `-- styles.py
|   |       |   |-- py.typed
|   |       |   |-- section.py
|   |       |   |-- settings.py
|   |       |   |-- shape.py
|   |       |   |-- shared.py
|   |       |   |-- styles
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- latent.cpython-310.pyc
|   |       |   |   |   |-- style.cpython-310.pyc
|   |       |   |   |   `-- styles.cpython-310.pyc
|   |       |   |   |-- latent.py
|   |       |   |   |-- style.py
|   |       |   |   `-- styles.py
|   |       |   |-- table.py
|   |       |   |-- templates
|   |       |   |   |-- default-comments.xml
|   |       |   |   |-- default-docx-template
|   |       |   |   |   |-- [Content_Types].xml
|   |       |   |   |   |-- _rels
|   |       |   |   |   |-- customXml
|   |       |   |   |   |   |-- _rels
|   |       |   |   |   |   |   `-- item1.xml.rels
|   |       |   |   |   |   |-- item1.xml
|   |       |   |   |   |   `-- itemProps1.xml
|   |       |   |   |   |-- docProps
|   |       |   |   |   |   |-- app.xml
|   |       |   |   |   |   |-- core.xml
|   |       |   |   |   |   `-- thumbnail.jpeg
|   |       |   |   |   `-- word
|   |       |   |   |       |-- _rels
|   |       |   |   |       |   `-- document.xml.rels
|   |       |   |   |       |-- document.xml
|   |       |   |   |       |-- fontTable.xml
|   |       |   |   |       |-- numbering.xml
|   |       |   |   |       |-- settings.xml
|   |       |   |   |       |-- styles.xml
|   |       |   |   |       |-- stylesWithEffects.xml
|   |       |   |   |       |-- theme
|   |       |   |   |       |   `-- theme1.xml
|   |       |   |   |       `-- webSettings.xml
|   |       |   |   |-- default-footer.xml
|   |       |   |   |-- default-header.xml
|   |       |   |   |-- default-settings.xml
|   |       |   |   |-- default-styles.xml
|   |       |   |   `-- default.docx
|   |       |   |-- text
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- font.cpython-310.pyc
|   |       |   |   |   |-- hyperlink.cpython-310.pyc
|   |       |   |   |   |-- pagebreak.cpython-310.pyc
|   |       |   |   |   |-- paragraph.cpython-310.pyc
|   |       |   |   |   |-- parfmt.cpython-310.pyc
|   |       |   |   |   |-- run.cpython-310.pyc
|   |       |   |   |   `-- tabstops.cpython-310.pyc
|   |       |   |   |-- font.py
|   |       |   |   |-- hyperlink.py
|   |       |   |   |-- pagebreak.py
|   |       |   |   |-- paragraph.py
|   |       |   |   |-- parfmt.py
|   |       |   |   |-- run.py
|   |       |   |   `-- tabstops.py
|   |       |   `-- types.py
|   |       |-- dotenv
|   |       |   |-- __init__.py
|   |       |   |-- __main__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- __main__.cpython-310.pyc
|   |       |   |   |-- cli.cpython-310.pyc
|   |       |   |   |-- ipython.cpython-310.pyc
|   |       |   |   |-- main.cpython-310.pyc
|   |       |   |   |-- parser.cpython-310.pyc
|   |       |   |   |-- variables.cpython-310.pyc
|   |       |   |   `-- version.cpython-310.pyc
|   |       |   |-- cli.py
|   |       |   |-- ipython.py
|   |       |   |-- main.py
|   |       |   |-- parser.py
|   |       |   |-- py.typed
|   |       |   |-- variables.py
|   |       |   `-- version.py
|   |       |-- exceptiongroup
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _catch.cpython-310.pyc
|   |       |   |   |-- _exceptions.cpython-310.pyc
|   |       |   |   |-- _formatting.cpython-310.pyc
|   |       |   |   |-- _suppress.cpython-310.pyc
|   |       |   |   `-- _version.cpython-310.pyc
|   |       |   |-- _catch.py
|   |       |   |-- _exceptions.py
|   |       |   |-- _formatting.py
|   |       |   |-- _suppress.py
|   |       |   |-- _version.py
|   |       |   `-- py.typed
|   |       |-- exceptiongroup-1.3.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- licenses
|   |       |       `-- LICENSE
|   |       |-- flask
|   |       |   |-- __init__.py
|   |       |   |-- __main__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- __main__.cpython-310.pyc
|   |       |   |   |-- app.cpython-310.pyc
|   |       |   |   |-- blueprints.cpython-310.pyc
|   |       |   |   |-- cli.cpython-310.pyc
|   |       |   |   |-- config.cpython-310.pyc
|   |       |   |   |-- ctx.cpython-310.pyc
|   |       |   |   |-- debughelpers.cpython-310.pyc
|   |       |   |   |-- globals.cpython-310.pyc
|   |       |   |   |-- helpers.cpython-310.pyc
|   |       |   |   |-- logging.cpython-310.pyc
|   |       |   |   |-- sessions.cpython-310.pyc
|   |       |   |   |-- signals.cpython-310.pyc
|   |       |   |   |-- templating.cpython-310.pyc
|   |       |   |   |-- testing.cpython-310.pyc
|   |       |   |   |-- typing.cpython-310.pyc
|   |       |   |   |-- views.cpython-310.pyc
|   |       |   |   `-- wrappers.cpython-310.pyc
|   |       |   |-- app.py
|   |       |   |-- blueprints.py
|   |       |   |-- cli.py
|   |       |   |-- config.py
|   |       |   |-- ctx.py
|   |       |   |-- debughelpers.py
|   |       |   |-- globals.py
|   |       |   |-- helpers.py
|   |       |   |-- json
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- provider.cpython-310.pyc
|   |       |   |   |   `-- tag.cpython-310.pyc
|   |       |   |   |-- provider.py
|   |       |   |   `-- tag.py
|   |       |   |-- logging.py
|   |       |   |-- py.typed
|   |       |   |-- sansio
|   |       |   |   |-- README.md
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- app.cpython-310.pyc
|   |       |   |   |   |-- blueprints.cpython-310.pyc
|   |       |   |   |   `-- scaffold.cpython-310.pyc
|   |       |   |   |-- app.py
|   |       |   |   |-- blueprints.py
|   |       |   |   `-- scaffold.py
|   |       |   |-- sessions.py
|   |       |   |-- signals.py
|   |       |   |-- templating.py
|   |       |   |-- testing.py
|   |       |   |-- typing.py
|   |       |   |-- views.py
|   |       |   `-- wrappers.py
|   |       |-- flask-3.1.1.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- REQUESTED
|   |       |   |-- WHEEL
|   |       |   |-- entry_points.txt
|   |       |   `-- licenses
|   |       |       `-- LICENSE.txt
|   |       |-- frozenlist
|   |       |   |-- __init__.py
|   |       |   |-- __init__.pyi
|   |       |   |-- __pycache__
|   |       |   |   `-- __init__.cpython-310.pyc
|   |       |   |-- _frozenlist.cp310-win_amd64.pyd
|   |       |   |-- _frozenlist.pyx
|   |       |   `-- py.typed
|   |       |-- frozenlist-1.7.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- licenses
|   |       |   |   `-- LICENSE
|   |       |   `-- top_level.txt
|   |       |-- h11
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _abnf.cpython-310.pyc
|   |       |   |   |-- _connection.cpython-310.pyc
|   |       |   |   |-- _events.cpython-310.pyc
|   |       |   |   |-- _headers.cpython-310.pyc
|   |       |   |   |-- _readers.cpython-310.pyc
|   |       |   |   |-- _receivebuffer.cpython-310.pyc
|   |       |   |   |-- _state.cpython-310.pyc
|   |       |   |   |-- _util.cpython-310.pyc
|   |       |   |   |-- _version.cpython-310.pyc
|   |       |   |   `-- _writers.cpython-310.pyc
|   |       |   |-- _abnf.py
|   |       |   |-- _connection.py
|   |       |   |-- _events.py
|   |       |   |-- _headers.py
|   |       |   |-- _readers.py
|   |       |   |-- _receivebuffer.py
|   |       |   |-- _state.py
|   |       |   |-- _util.py
|   |       |   |-- _version.py
|   |       |   |-- _writers.py
|   |       |   `-- py.typed
|   |       |-- h11-0.16.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- licenses
|   |       |   |   `-- LICENSE.txt
|   |       |   `-- top_level.txt
|   |       |-- httpcore
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _api.cpython-310.pyc
|   |       |   |   |-- _exceptions.cpython-310.pyc
|   |       |   |   |-- _models.cpython-310.pyc
|   |       |   |   |-- _ssl.cpython-310.pyc
|   |       |   |   |-- _synchronization.cpython-310.pyc
|   |       |   |   |-- _trace.cpython-310.pyc
|   |       |   |   `-- _utils.cpython-310.pyc
|   |       |   |-- _api.py
|   |       |   |-- _async
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- connection.cpython-310.pyc
|   |       |   |   |   |-- connection_pool.cpython-310.pyc
|   |       |   |   |   |-- http11.cpython-310.pyc
|   |       |   |   |   |-- http2.cpython-310.pyc
|   |       |   |   |   |-- http_proxy.cpython-310.pyc
|   |       |   |   |   |-- interfaces.cpython-310.pyc
|   |       |   |   |   `-- socks_proxy.cpython-310.pyc
|   |       |   |   |-- connection.py
|   |       |   |   |-- connection_pool.py
|   |       |   |   |-- http11.py
|   |       |   |   |-- http2.py
|   |       |   |   |-- http_proxy.py
|   |       |   |   |-- interfaces.py
|   |       |   |   `-- socks_proxy.py
|   |       |   |-- _backends
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- anyio.cpython-310.pyc
|   |       |   |   |   |-- auto.cpython-310.pyc
|   |       |   |   |   |-- base.cpython-310.pyc
|   |       |   |   |   |-- mock.cpython-310.pyc
|   |       |   |   |   |-- sync.cpython-310.pyc
|   |       |   |   |   `-- trio.cpython-310.pyc
|   |       |   |   |-- anyio.py
|   |       |   |   |-- auto.py
|   |       |   |   |-- base.py
|   |       |   |   |-- mock.py
|   |       |   |   |-- sync.py
|   |       |   |   `-- trio.py
|   |       |   |-- _exceptions.py
|   |       |   |-- _models.py
|   |       |   |-- _ssl.py
|   |       |   |-- _sync
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- connection.cpython-310.pyc
|   |       |   |   |   |-- connection_pool.cpython-310.pyc
|   |       |   |   |   |-- http11.cpython-310.pyc
|   |       |   |   |   |-- http2.cpython-310.pyc
|   |       |   |   |   |-- http_proxy.cpython-310.pyc
|   |       |   |   |   |-- interfaces.cpython-310.pyc
|   |       |   |   |   `-- socks_proxy.cpython-310.pyc
|   |       |   |   |-- connection.py
|   |       |   |   |-- connection_pool.py
|   |       |   |   |-- http11.py
|   |       |   |   |-- http2.py
|   |       |   |   |-- http_proxy.py
|   |       |   |   |-- interfaces.py
|   |       |   |   `-- socks_proxy.py
|   |       |   |-- _synchronization.py
|   |       |   |-- _trace.py
|   |       |   |-- _utils.py
|   |       |   `-- py.typed
|   |       |-- httpcore-1.0.9.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- licenses
|   |       |       `-- LICENSE.md
|   |       |-- httpx
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- __version__.cpython-310.pyc
|   |       |   |   |-- _api.cpython-310.pyc
|   |       |   |   |-- _auth.cpython-310.pyc
|   |       |   |   |-- _client.cpython-310.pyc
|   |       |   |   |-- _config.cpython-310.pyc
|   |       |   |   |-- _content.cpython-310.pyc
|   |       |   |   |-- _decoders.cpython-310.pyc
|   |       |   |   |-- _exceptions.cpython-310.pyc
|   |       |   |   |-- _main.cpython-310.pyc
|   |       |   |   |-- _models.cpython-310.pyc
|   |       |   |   |-- _multipart.cpython-310.pyc
|   |       |   |   |-- _status_codes.cpython-310.pyc
|   |       |   |   |-- _types.cpython-310.pyc
|   |       |   |   |-- _urlparse.cpython-310.pyc
|   |       |   |   |-- _urls.cpython-310.pyc
|   |       |   |   `-- _utils.cpython-310.pyc
|   |       |   |-- __version__.py
|   |       |   |-- _api.py
|   |       |   |-- _auth.py
|   |       |   |-- _client.py
|   |       |   |-- _config.py
|   |       |   |-- _content.py
|   |       |   |-- _decoders.py
|   |       |   |-- _exceptions.py
|   |       |   |-- _main.py
|   |       |   |-- _models.py
|   |       |   |-- _multipart.py
|   |       |   |-- _status_codes.py
|   |       |   |-- _transports
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- asgi.cpython-310.pyc
|   |       |   |   |   |-- base.cpython-310.pyc
|   |       |   |   |   |-- default.cpython-310.pyc
|   |       |   |   |   |-- mock.cpython-310.pyc
|   |       |   |   |   `-- wsgi.cpython-310.pyc
|   |       |   |   |-- asgi.py
|   |       |   |   |-- base.py
|   |       |   |   |-- default.py
|   |       |   |   |-- mock.py
|   |       |   |   `-- wsgi.py
|   |       |   |-- _types.py
|   |       |   |-- _urlparse.py
|   |       |   |-- _urls.py
|   |       |   |-- _utils.py
|   |       |   `-- py.typed
|   |       |-- httpx-0.28.1.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- entry_points.txt
|   |       |   `-- licenses
|   |       |       `-- LICENSE.md
|   |       |-- idna
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- codec.cpython-310.pyc
|   |       |   |   |-- compat.cpython-310.pyc
|   |       |   |   |-- core.cpython-310.pyc
|   |       |   |   |-- idnadata.cpython-310.pyc
|   |       |   |   |-- intranges.cpython-310.pyc
|   |       |   |   |-- package_data.cpython-310.pyc
|   |       |   |   `-- uts46data.cpython-310.pyc
|   |       |   |-- codec.py
|   |       |   |-- compat.py
|   |       |   |-- core.py
|   |       |   |-- idnadata.py
|   |       |   |-- intranges.py
|   |       |   |-- package_data.py
|   |       |   |-- py.typed
|   |       |   `-- uts46data.py
|   |       |-- idna-3.10.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- LICENSE.md
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   `-- WHEEL
|   |       |-- itsdangerous
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _json.cpython-310.pyc
|   |       |   |   |-- encoding.cpython-310.pyc
|   |       |   |   |-- exc.cpython-310.pyc
|   |       |   |   |-- serializer.cpython-310.pyc
|   |       |   |   |-- signer.cpython-310.pyc
|   |       |   |   |-- timed.cpython-310.pyc
|   |       |   |   `-- url_safe.cpython-310.pyc
|   |       |   |-- _json.py
|   |       |   |-- encoding.py
|   |       |   |-- exc.py
|   |       |   |-- py.typed
|   |       |   |-- serializer.py
|   |       |   |-- signer.py
|   |       |   |-- timed.py
|   |       |   `-- url_safe.py
|   |       |-- itsdangerous-2.2.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- LICENSE.txt
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   `-- WHEEL
|   |       |-- jinja2
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _identifier.cpython-310.pyc
|   |       |   |   |-- async_utils.cpython-310.pyc
|   |       |   |   |-- bccache.cpython-310.pyc
|   |       |   |   |-- compiler.cpython-310.pyc
|   |       |   |   |-- constants.cpython-310.pyc
|   |       |   |   |-- debug.cpython-310.pyc
|   |       |   |   |-- defaults.cpython-310.pyc
|   |       |   |   |-- environment.cpython-310.pyc
|   |       |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |-- ext.cpython-310.pyc
|   |       |   |   |-- filters.cpython-310.pyc
|   |       |   |   |-- idtracking.cpython-310.pyc
|   |       |   |   |-- lexer.cpython-310.pyc
|   |       |   |   |-- loaders.cpython-310.pyc
|   |       |   |   |-- meta.cpython-310.pyc
|   |       |   |   |-- nativetypes.cpython-310.pyc
|   |       |   |   |-- nodes.cpython-310.pyc
|   |       |   |   |-- optimizer.cpython-310.pyc
|   |       |   |   |-- parser.cpython-310.pyc
|   |       |   |   |-- runtime.cpython-310.pyc
|   |       |   |   |-- sandbox.cpython-310.pyc
|   |       |   |   |-- tests.cpython-310.pyc
|   |       |   |   |-- utils.cpython-310.pyc
|   |       |   |   `-- visitor.cpython-310.pyc
|   |       |   |-- _identifier.py
|   |       |   |-- async_utils.py
|   |       |   |-- bccache.py
|   |       |   |-- compiler.py
|   |       |   |-- constants.py
|   |       |   |-- debug.py
|   |       |   |-- defaults.py
|   |       |   |-- environment.py
|   |       |   |-- exceptions.py
|   |       |   |-- ext.py
|   |       |   |-- filters.py
|   |       |   |-- idtracking.py
|   |       |   |-- lexer.py
|   |       |   |-- loaders.py
|   |       |   |-- meta.py
|   |       |   |-- nativetypes.py
|   |       |   |-- nodes.py
|   |       |   |-- optimizer.py
|   |       |   |-- parser.py
|   |       |   |-- py.typed
|   |       |   |-- runtime.py
|   |       |   |-- sandbox.py
|   |       |   |-- tests.py
|   |       |   |-- utils.py
|   |       |   `-- visitor.py
|   |       |-- jinja2-3.1.6.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- entry_points.txt
|   |       |   `-- licenses
|   |       |       `-- LICENSE.txt
|   |       |-- jiter
|   |       |   |-- __init__.py
|   |       |   |-- __init__.pyi
|   |       |   |-- __pycache__
|   |       |   |   `-- __init__.cpython-310.pyc
|   |       |   |-- jiter.cp310-win_amd64.pyd
|   |       |   `-- py.typed
|   |       |-- jiter-0.10.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   `-- WHEEL
|   |       |-- lxml
|   |       |   |-- ElementInclude.py
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- ElementInclude.cpython-310.pyc
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _elementpath.cpython-310.pyc
|   |       |   |   |-- builder.cpython-310.pyc
|   |       |   |   |-- cssselect.cpython-310.pyc
|   |       |   |   |-- doctestcompare.cpython-310.pyc
|   |       |   |   |-- pyclasslookup.cpython-310.pyc
|   |       |   |   |-- sax.cpython-310.pyc
|   |       |   |   `-- usedoctest.cpython-310.pyc
|   |       |   |-- _elementpath.cp310-win_amd64.pyd
|   |       |   |-- _elementpath.py
|   |       |   |-- apihelpers.pxi
|   |       |   |-- builder.cp310-win_amd64.pyd
|   |       |   |-- builder.py
|   |       |   |-- classlookup.pxi
|   |       |   |-- cleanup.pxi
|   |       |   |-- cssselect.py
|   |       |   |-- debug.pxi
|   |       |   |-- docloader.pxi
|   |       |   |-- doctestcompare.py
|   |       |   |-- dtd.pxi
|   |       |   |-- etree.cp310-win_amd64.pyd
|   |       |   |-- etree.h
|   |       |   |-- etree.pyx
|   |       |   |-- etree_api.h
|   |       |   |-- extensions.pxi
|   |       |   |-- html
|   |       |   |   |-- ElementSoup.py
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- ElementSoup.cpython-310.pyc
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- _diffcommand.cpython-310.pyc
|   |       |   |   |   |-- _difflib.cpython-310.pyc
|   |       |   |   |   |-- _html5builder.cpython-310.pyc
|   |       |   |   |   |-- _setmixin.cpython-310.pyc
|   |       |   |   |   |-- builder.cpython-310.pyc
|   |       |   |   |   |-- clean.cpython-310.pyc
|   |       |   |   |   |-- defs.cpython-310.pyc
|   |       |   |   |   |-- diff.cpython-310.pyc
|   |       |   |   |   |-- formfill.cpython-310.pyc
|   |       |   |   |   |-- html5parser.cpython-310.pyc
|   |       |   |   |   |-- soupparser.cpython-310.pyc
|   |       |   |   |   `-- usedoctest.cpython-310.pyc
|   |       |   |   |-- _diffcommand.py
|   |       |   |   |-- _difflib.cp310-win_amd64.pyd
|   |       |   |   |-- _difflib.py
|   |       |   |   |-- _html5builder.py
|   |       |   |   |-- _setmixin.py
|   |       |   |   |-- builder.py
|   |       |   |   |-- clean.py
|   |       |   |   |-- defs.py
|   |       |   |   |-- diff.cp310-win_amd64.pyd
|   |       |   |   |-- diff.py
|   |       |   |   |-- formfill.py
|   |       |   |   |-- html5parser.py
|   |       |   |   |-- soupparser.py
|   |       |   |   `-- usedoctest.py
|   |       |   |-- includes
|   |       |   |   |-- __init__.pxd
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   `-- __init__.cpython-310.pyc
|   |       |   |   |-- c14n.pxd
|   |       |   |   |-- config.pxd
|   |       |   |   |-- dtdvalid.pxd
|   |       |   |   |-- etree_defs.h
|   |       |   |   |-- etreepublic.pxd
|   |       |   |   |-- extlibs
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   `-- __init__.cpython-310.pyc
|   |       |   |   |   |-- zconf.h
|   |       |   |   |   `-- zlib.h
|   |       |   |   |-- htmlparser.pxd
|   |       |   |   |-- libexslt
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   `-- __init__.cpython-310.pyc
|   |       |   |   |   |-- exslt.h
|   |       |   |   |   |-- exsltconfig.h
|   |       |   |   |   |-- exsltexports.h
|   |       |   |   |   `-- libexslt.h
|   |       |   |   |-- libxml
|   |       |   |   |   |-- HTMLparser.h
|   |       |   |   |   |-- HTMLtree.h
|   |       |   |   |   |-- SAX.h
|   |       |   |   |   |-- SAX2.h
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   `-- __init__.cpython-310.pyc
|   |       |   |   |   |-- c14n.h
|   |       |   |   |   |-- catalog.h
|   |       |   |   |   |-- chvalid.h
|   |       |   |   |   |-- debugXML.h
|   |       |   |   |   |-- dict.h
|   |       |   |   |   |-- encoding.h
|   |       |   |   |   |-- entities.h
|   |       |   |   |   |-- globals.h
|   |       |   |   |   |-- hash.h
|   |       |   |   |   |-- list.h
|   |       |   |   |   |-- nanoftp.h
|   |       |   |   |   |-- nanohttp.h
|   |       |   |   |   |-- parser.h
|   |       |   |   |   |-- parserInternals.h
|   |       |   |   |   |-- pattern.h
|   |       |   |   |   |-- relaxng.h
|   |       |   |   |   |-- schemasInternals.h
|   |       |   |   |   |-- schematron.h
|   |       |   |   |   |-- threads.h
|   |       |   |   |   |-- tree.h
|   |       |   |   |   |-- uri.h
|   |       |   |   |   |-- valid.h
|   |       |   |   |   |-- xinclude.h
|   |       |   |   |   |-- xlink.h
|   |       |   |   |   |-- xmlIO.h
|   |       |   |   |   |-- xmlautomata.h
|   |       |   |   |   |-- xmlerror.h
|   |       |   |   |   |-- xmlexports.h
|   |       |   |   |   |-- xmlmemory.h
|   |       |   |   |   |-- xmlmodule.h
|   |       |   |   |   |-- xmlreader.h
|   |       |   |   |   |-- xmlregexp.h
|   |       |   |   |   |-- xmlsave.h
|   |       |   |   |   |-- xmlschemas.h
|   |       |   |   |   |-- xmlschemastypes.h
|   |       |   |   |   |-- xmlstring.h
|   |       |   |   |   |-- xmlunicode.h
|   |       |   |   |   |-- xmlversion.h
|   |       |   |   |   |-- xmlwriter.h
|   |       |   |   |   |-- xpath.h
|   |       |   |   |   |-- xpathInternals.h
|   |       |   |   |   `-- xpointer.h
|   |       |   |   |-- libxslt
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   `-- __init__.cpython-310.pyc
|   |       |   |   |   |-- attributes.h
|   |       |   |   |   |-- documents.h
|   |       |   |   |   |-- extensions.h
|   |       |   |   |   |-- extra.h
|   |       |   |   |   |-- functions.h
|   |       |   |   |   |-- imports.h
|   |       |   |   |   |-- keys.h
|   |       |   |   |   |-- libxslt.h
|   |       |   |   |   |-- namespaces.h
|   |       |   |   |   |-- numbersInternals.h
|   |       |   |   |   |-- preproc.h
|   |       |   |   |   |-- security.h
|   |       |   |   |   |-- templates.h
|   |       |   |   |   |-- transform.h
|   |       |   |   |   |-- trio.h
|   |       |   |   |   |-- triodef.h
|   |       |   |   |   |-- variables.h
|   |       |   |   |   |-- win32config.h
|   |       |   |   |   |-- xslt.h
|   |       |   |   |   |-- xsltInternals.h
|   |       |   |   |   |-- xsltconfig.h
|   |       |   |   |   |-- xsltexports.h
|   |       |   |   |   |-- xsltlocale.h
|   |       |   |   |   `-- xsltutils.h
|   |       |   |   |-- lxml-version.h
|   |       |   |   |-- relaxng.pxd
|   |       |   |   |-- schematron.pxd
|   |       |   |   |-- tree.pxd
|   |       |   |   |-- uri.pxd
|   |       |   |   |-- xinclude.pxd
|   |       |   |   |-- xmlerror.pxd
|   |       |   |   |-- xmlparser.pxd
|   |       |   |   |-- xmlschema.pxd
|   |       |   |   |-- xpath.pxd
|   |       |   |   `-- xslt.pxd
|   |       |   |-- isoschematron
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   `-- __init__.cpython-310.pyc
|   |       |   |   `-- resources
|   |       |   |       |-- rng
|   |       |   |       |   `-- iso-schematron.rng
|   |       |   |       `-- xsl
|   |       |   |           |-- RNG2Schtrn.xsl
|   |       |   |           |-- XSD2Schtrn.xsl
|   |       |   |           `-- iso-schematron-xslt1
|   |       |   |               |-- iso_abstract_expand.xsl
|   |       |   |               |-- iso_dsdl_include.xsl
|   |       |   |               |-- iso_schematron_message.xsl
|   |       |   |               |-- iso_schematron_skeleton_for_xslt1.xsl
|   |       |   |               |-- iso_svrl_for_xslt1.xsl
|   |       |   |               `-- readme.txt
|   |       |   |-- iterparse.pxi
|   |       |   |-- lxml.etree.h
|   |       |   |-- lxml.etree_api.h
|   |       |   |-- nsclasses.pxi
|   |       |   |-- objectify.cp310-win_amd64.pyd
|   |       |   |-- objectify.pyx
|   |       |   |-- objectpath.pxi
|   |       |   |-- parser.pxi
|   |       |   |-- parsertarget.pxi
|   |       |   |-- proxy.pxi
|   |       |   |-- public-api.pxi
|   |       |   |-- pyclasslookup.py
|   |       |   |-- readonlytree.pxi
|   |       |   |-- relaxng.pxi
|   |       |   |-- sax.cp310-win_amd64.pyd
|   |       |   |-- sax.py
|   |       |   |-- saxparser.pxi
|   |       |   |-- schematron.pxi
|   |       |   |-- serializer.pxi
|   |       |   |-- usedoctest.py
|   |       |   |-- xinclude.pxi
|   |       |   |-- xmlerror.pxi
|   |       |   |-- xmlid.pxi
|   |       |   |-- xmlschema.pxi
|   |       |   |-- xpath.pxi
|   |       |   |-- xslt.pxi
|   |       |   `-- xsltext.pxi
|   |       |-- lxml-6.0.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- licenses
|   |       |   |   |-- LICENSE.txt
|   |       |   |   `-- LICENSES.txt
|   |       |   `-- top_level.txt
|   |       |-- markupsafe
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   `-- _native.cpython-310.pyc
|   |       |   |-- _native.py
|   |       |   |-- _speedups.c
|   |       |   |-- _speedups.cp310-win_amd64.pyd
|   |       |   |-- _speedups.pyi
|   |       |   `-- py.typed
|   |       |-- multidict
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _abc.cpython-310.pyc
|   |       |   |   |-- _compat.cpython-310.pyc
|   |       |   |   `-- _multidict_py.cpython-310.pyc
|   |       |   |-- _abc.py
|   |       |   |-- _compat.py
|   |       |   |-- _multidict.cp310-win_amd64.pyd
|   |       |   |-- _multidict_py.py
|   |       |   `-- py.typed
|   |       |-- multidict-6.6.2.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- licenses
|   |       |   |   `-- LICENSE
|   |       |   `-- top_level.txt
|   |       |-- openai
|   |       |   |-- __init__.py
|   |       |   |-- __main__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- __main__.cpython-310.pyc
|   |       |   |   |-- _base_client.cpython-310.pyc
|   |       |   |   |-- _client.cpython-310.pyc
|   |       |   |   |-- _compat.cpython-310.pyc
|   |       |   |   |-- _constants.cpython-310.pyc
|   |       |   |   |-- _exceptions.cpython-310.pyc
|   |       |   |   |-- _files.cpython-310.pyc
|   |       |   |   |-- _legacy_response.cpython-310.pyc
|   |       |   |   |-- _models.cpython-310.pyc
|   |       |   |   |-- _module_client.cpython-310.pyc
|   |       |   |   |-- _qs.cpython-310.pyc
|   |       |   |   |-- _resource.cpython-310.pyc
|   |       |   |   |-- _response.cpython-310.pyc
|   |       |   |   |-- _streaming.cpython-310.pyc
|   |       |   |   |-- _types.cpython-310.pyc
|   |       |   |   |-- _version.cpython-310.pyc
|   |       |   |   |-- pagination.cpython-310.pyc
|   |       |   |   `-- version.cpython-310.pyc
|   |       |   |-- _base_client.py
|   |       |   |-- _client.py
|   |       |   |-- _compat.py
|   |       |   |-- _constants.py
|   |       |   |-- _exceptions.py
|   |       |   |-- _extras
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- _common.cpython-310.pyc
|   |       |   |   |   |-- numpy_proxy.cpython-310.pyc
|   |       |   |   |   |-- pandas_proxy.cpython-310.pyc
|   |       |   |   |   `-- sounddevice_proxy.cpython-310.pyc
|   |       |   |   |-- _common.py
|   |       |   |   |-- numpy_proxy.py
|   |       |   |   |-- pandas_proxy.py
|   |       |   |   `-- sounddevice_proxy.py
|   |       |   |-- _files.py
|   |       |   |-- _legacy_response.py
|   |       |   |-- _models.py
|   |       |   |-- _module_client.py
|   |       |   |-- _qs.py
|   |       |   |-- _resource.py
|   |       |   |-- _response.py
|   |       |   |-- _streaming.py
|   |       |   |-- _types.py
|   |       |   |-- _utils
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- _logs.cpython-310.pyc
|   |       |   |   |   |-- _proxy.cpython-310.pyc
|   |       |   |   |   |-- _reflection.cpython-310.pyc
|   |       |   |   |   |-- _resources_proxy.cpython-310.pyc
|   |       |   |   |   |-- _streams.cpython-310.pyc
|   |       |   |   |   |-- _sync.cpython-310.pyc
|   |       |   |   |   |-- _transform.cpython-310.pyc
|   |       |   |   |   |-- _typing.cpython-310.pyc
|   |       |   |   |   `-- _utils.cpython-310.pyc
|   |       |   |   |-- _logs.py
|   |       |   |   |-- _proxy.py
|   |       |   |   |-- _reflection.py
|   |       |   |   |-- _resources_proxy.py
|   |       |   |   |-- _streams.py
|   |       |   |   |-- _sync.py
|   |       |   |   |-- _transform.py
|   |       |   |   |-- _typing.py
|   |       |   |   `-- _utils.py
|   |       |   |-- _version.py
|   |       |   |-- cli
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- _cli.cpython-310.pyc
|   |       |   |   |   |-- _errors.cpython-310.pyc
|   |       |   |   |   |-- _models.cpython-310.pyc
|   |       |   |   |   |-- _progress.cpython-310.pyc
|   |       |   |   |   `-- _utils.cpython-310.pyc
|   |       |   |   |-- _api
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- _main.cpython-310.pyc
|   |       |   |   |   |   |-- audio.cpython-310.pyc
|   |       |   |   |   |   |-- completions.cpython-310.pyc
|   |       |   |   |   |   |-- files.cpython-310.pyc
|   |       |   |   |   |   |-- image.cpython-310.pyc
|   |       |   |   |   |   `-- models.cpython-310.pyc
|   |       |   |   |   |-- _main.py
|   |       |   |   |   |-- audio.py
|   |       |   |   |   |-- chat
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   `-- completions.cpython-310.pyc
|   |       |   |   |   |   `-- completions.py
|   |       |   |   |   |-- completions.py
|   |       |   |   |   |-- files.py
|   |       |   |   |   |-- fine_tuning
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   `-- jobs.cpython-310.pyc
|   |       |   |   |   |   `-- jobs.py
|   |       |   |   |   |-- image.py
|   |       |   |   |   `-- models.py
|   |       |   |   |-- _cli.py
|   |       |   |   |-- _errors.py
|   |       |   |   |-- _models.py
|   |       |   |   |-- _progress.py
|   |       |   |   |-- _tools
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- _main.cpython-310.pyc
|   |       |   |   |   |   |-- fine_tunes.cpython-310.pyc
|   |       |   |   |   |   `-- migrate.cpython-310.pyc
|   |       |   |   |   |-- _main.py
|   |       |   |   |   |-- fine_tunes.py
|   |       |   |   |   `-- migrate.py
|   |       |   |   `-- _utils.py
|   |       |   |-- helpers
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- local_audio_player.cpython-310.pyc
|   |       |   |   |   `-- microphone.cpython-310.pyc
|   |       |   |   |-- local_audio_player.py
|   |       |   |   `-- microphone.py
|   |       |   |-- lib
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- _old_api.cpython-310.pyc
|   |       |   |   |   |-- _pydantic.cpython-310.pyc
|   |       |   |   |   |-- _tools.cpython-310.pyc
|   |       |   |   |   |-- _validators.cpython-310.pyc
|   |       |   |   |   `-- azure.cpython-310.pyc
|   |       |   |   |-- _old_api.py
|   |       |   |   |-- _parsing
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- _completions.cpython-310.pyc
|   |       |   |   |   |   `-- _responses.cpython-310.pyc
|   |       |   |   |   |-- _completions.py
|   |       |   |   |   `-- _responses.py
|   |       |   |   |-- _pydantic.py
|   |       |   |   |-- _tools.py
|   |       |   |   |-- _validators.py
|   |       |   |   |-- azure.py
|   |       |   |   `-- streaming
|   |       |   |       |-- __init__.py
|   |       |   |       |-- __pycache__
|   |       |   |       |   |-- __init__.cpython-310.pyc
|   |       |   |       |   |-- _assistants.cpython-310.pyc
|   |       |   |       |   `-- _deltas.cpython-310.pyc
|   |       |   |       |-- _assistants.py
|   |       |   |       |-- _deltas.py
|   |       |   |       |-- chat
|   |       |   |       |   |-- __init__.py
|   |       |   |       |   |-- __pycache__
|   |       |   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |       |   |   |-- _completions.cpython-310.pyc
|   |       |   |       |   |   |-- _events.cpython-310.pyc
|   |       |   |       |   |   `-- _types.cpython-310.pyc
|   |       |   |       |   |-- _completions.py
|   |       |   |       |   |-- _events.py
|   |       |   |       |   `-- _types.py
|   |       |   |       `-- responses
|   |       |   |           |-- __init__.py
|   |       |   |           |-- __pycache__
|   |       |   |           |   |-- __init__.cpython-310.pyc
|   |       |   |           |   |-- _events.cpython-310.pyc
|   |       |   |           |   |-- _responses.cpython-310.pyc
|   |       |   |           |   `-- _types.cpython-310.pyc
|   |       |   |           |-- _events.py
|   |       |   |           |-- _responses.py
|   |       |   |           `-- _types.py
|   |       |   |-- pagination.py
|   |       |   |-- py.typed
|   |       |   |-- resources
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- batches.cpython-310.pyc
|   |       |   |   |   |-- completions.cpython-310.pyc
|   |       |   |   |   |-- embeddings.cpython-310.pyc
|   |       |   |   |   |-- files.cpython-310.pyc
|   |       |   |   |   |-- images.cpython-310.pyc
|   |       |   |   |   |-- models.cpython-310.pyc
|   |       |   |   |   |-- moderations.cpython-310.pyc
|   |       |   |   |   `-- webhooks.cpython-310.pyc
|   |       |   |   |-- audio
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- audio.cpython-310.pyc
|   |       |   |   |   |   |-- speech.cpython-310.pyc
|   |       |   |   |   |   |-- transcriptions.cpython-310.pyc
|   |       |   |   |   |   `-- translations.cpython-310.pyc
|   |       |   |   |   |-- audio.py
|   |       |   |   |   |-- speech.py
|   |       |   |   |   |-- transcriptions.py
|   |       |   |   |   `-- translations.py
|   |       |   |   |-- batches.py
|   |       |   |   |-- beta
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- assistants.cpython-310.pyc
|   |       |   |   |   |   `-- beta.cpython-310.pyc
|   |       |   |   |   |-- assistants.py
|   |       |   |   |   |-- beta.py
|   |       |   |   |   |-- realtime
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- realtime.cpython-310.pyc
|   |       |   |   |   |   |   |-- sessions.cpython-310.pyc
|   |       |   |   |   |   |   `-- transcription_sessions.cpython-310.pyc
|   |       |   |   |   |   |-- realtime.py
|   |       |   |   |   |   |-- sessions.py
|   |       |   |   |   |   `-- transcription_sessions.py
|   |       |   |   |   `-- threads
|   |       |   |   |       |-- __init__.py
|   |       |   |   |       |-- __pycache__
|   |       |   |   |       |   |-- __init__.cpython-310.pyc
|   |       |   |   |       |   |-- messages.cpython-310.pyc
|   |       |   |   |       |   `-- threads.cpython-310.pyc
|   |       |   |   |       |-- messages.py
|   |       |   |   |       |-- runs
|   |       |   |   |       |   |-- __init__.py
|   |       |   |   |       |   |-- __pycache__
|   |       |   |   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |       |   |   |-- runs.cpython-310.pyc
|   |       |   |   |       |   |   `-- steps.cpython-310.pyc
|   |       |   |   |       |   |-- runs.py
|   |       |   |   |       |   `-- steps.py
|   |       |   |   |       `-- threads.py
|   |       |   |   |-- chat
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   `-- chat.cpython-310.pyc
|   |       |   |   |   |-- chat.py
|   |       |   |   |   `-- completions
|   |       |   |   |       |-- __init__.py
|   |       |   |   |       |-- __pycache__
|   |       |   |   |       |   |-- __init__.cpython-310.pyc
|   |       |   |   |       |   |-- completions.cpython-310.pyc
|   |       |   |   |       |   `-- messages.cpython-310.pyc
|   |       |   |   |       |-- completions.py
|   |       |   |   |       `-- messages.py
|   |       |   |   |-- completions.py
|   |       |   |   |-- containers
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   `-- containers.cpython-310.pyc
|   |       |   |   |   |-- containers.py
|   |       |   |   |   `-- files
|   |       |   |   |       |-- __init__.py
|   |       |   |   |       |-- __pycache__
|   |       |   |   |       |   |-- __init__.cpython-310.pyc
|   |       |   |   |       |   |-- content.cpython-310.pyc
|   |       |   |   |       |   `-- files.cpython-310.pyc
|   |       |   |   |       |-- content.py
|   |       |   |   |       `-- files.py
|   |       |   |   |-- embeddings.py
|   |       |   |   |-- evals
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   `-- evals.cpython-310.pyc
|   |       |   |   |   |-- evals.py
|   |       |   |   |   `-- runs
|   |       |   |   |       |-- __init__.py
|   |       |   |   |       |-- __pycache__
|   |       |   |   |       |   |-- __init__.cpython-310.pyc
|   |       |   |   |       |   |-- output_items.cpython-310.pyc
|   |       |   |   |       |   `-- runs.cpython-310.pyc
|   |       |   |   |       |-- output_items.py
|   |       |   |   |       `-- runs.py
|   |       |   |   |-- files.py
|   |       |   |   |-- fine_tuning
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   `-- fine_tuning.cpython-310.pyc
|   |       |   |   |   |-- alpha
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- alpha.cpython-310.pyc
|   |       |   |   |   |   |   `-- graders.cpython-310.pyc
|   |       |   |   |   |   |-- alpha.py
|   |       |   |   |   |   `-- graders.py
|   |       |   |   |   |-- checkpoints
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- checkpoints.cpython-310.pyc
|   |       |   |   |   |   |   `-- permissions.cpython-310.pyc
|   |       |   |   |   |   |-- checkpoints.py
|   |       |   |   |   |   `-- permissions.py
|   |       |   |   |   |-- fine_tuning.py
|   |       |   |   |   `-- jobs
|   |       |   |   |       |-- __init__.py
|   |       |   |   |       |-- __pycache__
|   |       |   |   |       |   |-- __init__.cpython-310.pyc
|   |       |   |   |       |   |-- checkpoints.cpython-310.pyc
|   |       |   |   |       |   `-- jobs.cpython-310.pyc
|   |       |   |   |       |-- checkpoints.py
|   |       |   |   |       `-- jobs.py
|   |       |   |   |-- images.py
|   |       |   |   |-- models.py
|   |       |   |   |-- moderations.py
|   |       |   |   |-- responses
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- input_items.cpython-310.pyc
|   |       |   |   |   |   `-- responses.cpython-310.pyc
|   |       |   |   |   |-- input_items.py
|   |       |   |   |   `-- responses.py
|   |       |   |   |-- uploads
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- parts.cpython-310.pyc
|   |       |   |   |   |   `-- uploads.cpython-310.pyc
|   |       |   |   |   |-- parts.py
|   |       |   |   |   `-- uploads.py
|   |       |   |   |-- vector_stores
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- file_batches.cpython-310.pyc
|   |       |   |   |   |   |-- files.cpython-310.pyc
|   |       |   |   |   |   `-- vector_stores.cpython-310.pyc
|   |       |   |   |   |-- file_batches.py
|   |       |   |   |   |-- files.py
|   |       |   |   |   `-- vector_stores.py
|   |       |   |   `-- webhooks.py
|   |       |   |-- types
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- audio_model.cpython-310.pyc
|   |       |   |   |   |-- audio_response_format.cpython-310.pyc
|   |       |   |   |   |-- auto_file_chunking_strategy_param.cpython-310.pyc
|   |       |   |   |   |-- batch.cpython-310.pyc
|   |       |   |   |   |-- batch_create_params.cpython-310.pyc
|   |       |   |   |   |-- batch_error.cpython-310.pyc
|   |       |   |   |   |-- batch_list_params.cpython-310.pyc
|   |       |   |   |   |-- batch_request_counts.cpython-310.pyc
|   |       |   |   |   |-- chat_model.cpython-310.pyc
|   |       |   |   |   |-- completion.cpython-310.pyc
|   |       |   |   |   |-- completion_choice.cpython-310.pyc
|   |       |   |   |   |-- completion_create_params.cpython-310.pyc
|   |       |   |   |   |-- completion_usage.cpython-310.pyc
|   |       |   |   |   |-- container_create_params.cpython-310.pyc
|   |       |   |   |   |-- container_create_response.cpython-310.pyc
|   |       |   |   |   |-- container_list_params.cpython-310.pyc
|   |       |   |   |   |-- container_list_response.cpython-310.pyc
|   |       |   |   |   |-- container_retrieve_response.cpython-310.pyc
|   |       |   |   |   |-- create_embedding_response.cpython-310.pyc
|   |       |   |   |   |-- embedding.cpython-310.pyc
|   |       |   |   |   |-- embedding_create_params.cpython-310.pyc
|   |       |   |   |   |-- embedding_model.cpython-310.pyc
|   |       |   |   |   |-- eval_create_params.cpython-310.pyc
|   |       |   |   |   |-- eval_create_response.cpython-310.pyc
|   |       |   |   |   |-- eval_custom_data_source_config.cpython-310.pyc
|   |       |   |   |   |-- eval_delete_response.cpython-310.pyc
|   |       |   |   |   |-- eval_list_params.cpython-310.pyc
|   |       |   |   |   |-- eval_list_response.cpython-310.pyc
|   |       |   |   |   |-- eval_retrieve_response.cpython-310.pyc
|   |       |   |   |   |-- eval_stored_completions_data_source_config.cpython-310.pyc
|   |       |   |   |   |-- eval_update_params.cpython-310.pyc
|   |       |   |   |   |-- eval_update_response.cpython-310.pyc
|   |       |   |   |   |-- file_chunking_strategy.cpython-310.pyc
|   |       |   |   |   |-- file_chunking_strategy_param.cpython-310.pyc
|   |       |   |   |   |-- file_content.cpython-310.pyc
|   |       |   |   |   |-- file_create_params.cpython-310.pyc
|   |       |   |   |   |-- file_deleted.cpython-310.pyc
|   |       |   |   |   |-- file_list_params.cpython-310.pyc
|   |       |   |   |   |-- file_object.cpython-310.pyc
|   |       |   |   |   |-- file_purpose.cpython-310.pyc
|   |       |   |   |   |-- image.cpython-310.pyc
|   |       |   |   |   |-- image_create_variation_params.cpython-310.pyc
|   |       |   |   |   |-- image_edit_params.cpython-310.pyc
|   |       |   |   |   |-- image_generate_params.cpython-310.pyc
|   |       |   |   |   |-- image_model.cpython-310.pyc
|   |       |   |   |   |-- images_response.cpython-310.pyc
|   |       |   |   |   |-- model.cpython-310.pyc
|   |       |   |   |   |-- model_deleted.cpython-310.pyc
|   |       |   |   |   |-- moderation.cpython-310.pyc
|   |       |   |   |   |-- moderation_create_params.cpython-310.pyc
|   |       |   |   |   |-- moderation_create_response.cpython-310.pyc
|   |       |   |   |   |-- moderation_image_url_input_param.cpython-310.pyc
|   |       |   |   |   |-- moderation_model.cpython-310.pyc
|   |       |   |   |   |-- moderation_multi_modal_input_param.cpython-310.pyc
|   |       |   |   |   |-- moderation_text_input_param.cpython-310.pyc
|   |       |   |   |   |-- other_file_chunking_strategy_object.cpython-310.pyc
|   |       |   |   |   |-- static_file_chunking_strategy.cpython-310.pyc
|   |       |   |   |   |-- static_file_chunking_strategy_object.cpython-310.pyc
|   |       |   |   |   |-- static_file_chunking_strategy_object_param.cpython-310.pyc
|   |       |   |   |   |-- static_file_chunking_strategy_param.cpython-310.pyc
|   |       |   |   |   |-- upload.cpython-310.pyc
|   |       |   |   |   |-- upload_complete_params.cpython-310.pyc
|   |       |   |   |   |-- upload_create_params.cpython-310.pyc
|   |       |   |   |   |-- vector_store.cpython-310.pyc
|   |       |   |   |   |-- vector_store_create_params.cpython-310.pyc
|   |       |   |   |   |-- vector_store_deleted.cpython-310.pyc
|   |       |   |   |   |-- vector_store_list_params.cpython-310.pyc
|   |       |   |   |   |-- vector_store_search_params.cpython-310.pyc
|   |       |   |   |   |-- vector_store_search_response.cpython-310.pyc
|   |       |   |   |   |-- vector_store_update_params.cpython-310.pyc
|   |       |   |   |   `-- websocket_connection_options.cpython-310.pyc
|   |       |   |   |-- audio
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- speech_create_params.cpython-310.pyc
|   |       |   |   |   |   |-- speech_model.cpython-310.pyc
|   |       |   |   |   |   |-- transcription.cpython-310.pyc
|   |       |   |   |   |   |-- transcription_create_params.cpython-310.pyc
|   |       |   |   |   |   |-- transcription_create_response.cpython-310.pyc
|   |       |   |   |   |   |-- transcription_include.cpython-310.pyc
|   |       |   |   |   |   |-- transcription_segment.cpython-310.pyc
|   |       |   |   |   |   |-- transcription_stream_event.cpython-310.pyc
|   |       |   |   |   |   |-- transcription_text_delta_event.cpython-310.pyc
|   |       |   |   |   |   |-- transcription_text_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- transcription_verbose.cpython-310.pyc
|   |       |   |   |   |   |-- transcription_word.cpython-310.pyc
|   |       |   |   |   |   |-- translation.cpython-310.pyc
|   |       |   |   |   |   |-- translation_create_params.cpython-310.pyc
|   |       |   |   |   |   |-- translation_create_response.cpython-310.pyc
|   |       |   |   |   |   `-- translation_verbose.cpython-310.pyc
|   |       |   |   |   |-- speech_create_params.py
|   |       |   |   |   |-- speech_model.py
|   |       |   |   |   |-- transcription.py
|   |       |   |   |   |-- transcription_create_params.py
|   |       |   |   |   |-- transcription_create_response.py
|   |       |   |   |   |-- transcription_include.py
|   |       |   |   |   |-- transcription_segment.py
|   |       |   |   |   |-- transcription_stream_event.py
|   |       |   |   |   |-- transcription_text_delta_event.py
|   |       |   |   |   |-- transcription_text_done_event.py
|   |       |   |   |   |-- transcription_verbose.py
|   |       |   |   |   |-- transcription_word.py
|   |       |   |   |   |-- translation.py
|   |       |   |   |   |-- translation_create_params.py
|   |       |   |   |   |-- translation_create_response.py
|   |       |   |   |   `-- translation_verbose.py
|   |       |   |   |-- audio_model.py
|   |       |   |   |-- audio_response_format.py
|   |       |   |   |-- auto_file_chunking_strategy_param.py
|   |       |   |   |-- batch.py
|   |       |   |   |-- batch_create_params.py
|   |       |   |   |-- batch_error.py
|   |       |   |   |-- batch_list_params.py
|   |       |   |   |-- batch_request_counts.py
|   |       |   |   |-- beta
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- assistant.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_create_params.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_deleted.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_list_params.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_response_format_option.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_response_format_option_param.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_stream_event.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_tool.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_tool_choice.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_tool_choice_function.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_tool_choice_function_param.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_tool_choice_option.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_tool_choice_option_param.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_tool_choice_param.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_tool_param.cpython-310.pyc
|   |       |   |   |   |   |-- assistant_update_params.cpython-310.pyc
|   |       |   |   |   |   |-- code_interpreter_tool.cpython-310.pyc
|   |       |   |   |   |   |-- code_interpreter_tool_param.cpython-310.pyc
|   |       |   |   |   |   |-- file_search_tool.cpython-310.pyc
|   |       |   |   |   |   |-- file_search_tool_param.cpython-310.pyc
|   |       |   |   |   |   |-- function_tool.cpython-310.pyc
|   |       |   |   |   |   |-- function_tool_param.cpython-310.pyc
|   |       |   |   |   |   |-- thread.cpython-310.pyc
|   |       |   |   |   |   |-- thread_create_and_run_params.cpython-310.pyc
|   |       |   |   |   |   |-- thread_create_params.cpython-310.pyc
|   |       |   |   |   |   |-- thread_deleted.cpython-310.pyc
|   |       |   |   |   |   `-- thread_update_params.cpython-310.pyc
|   |       |   |   |   |-- assistant.py
|   |       |   |   |   |-- assistant_create_params.py
|   |       |   |   |   |-- assistant_deleted.py
|   |       |   |   |   |-- assistant_list_params.py
|   |       |   |   |   |-- assistant_response_format_option.py
|   |       |   |   |   |-- assistant_response_format_option_param.py
|   |       |   |   |   |-- assistant_stream_event.py
|   |       |   |   |   |-- assistant_tool.py
|   |       |   |   |   |-- assistant_tool_choice.py
|   |       |   |   |   |-- assistant_tool_choice_function.py
|   |       |   |   |   |-- assistant_tool_choice_function_param.py
|   |       |   |   |   |-- assistant_tool_choice_option.py
|   |       |   |   |   |-- assistant_tool_choice_option_param.py
|   |       |   |   |   |-- assistant_tool_choice_param.py
|   |       |   |   |   |-- assistant_tool_param.py
|   |       |   |   |   |-- assistant_update_params.py
|   |       |   |   |   |-- chat
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   `-- __pycache__
|   |       |   |   |   |       `-- __init__.cpython-310.pyc
|   |       |   |   |   |-- code_interpreter_tool.py
|   |       |   |   |   |-- code_interpreter_tool_param.py
|   |       |   |   |   |-- file_search_tool.py
|   |       |   |   |   |-- file_search_tool_param.py
|   |       |   |   |   |-- function_tool.py
|   |       |   |   |   |-- function_tool_param.py
|   |       |   |   |   |-- realtime
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_created_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_content.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_content_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_create_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_create_event_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_created_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_delete_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_delete_event_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_deleted_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_input_audio_transcription_completed_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_input_audio_transcription_delta_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_input_audio_transcription_failed_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_retrieve_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_retrieve_event_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_truncate_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_truncate_event_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_truncated_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_with_reference.cpython-310.pyc
|   |       |   |   |   |   |   |-- conversation_item_with_reference_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- error_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- input_audio_buffer_append_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- input_audio_buffer_append_event_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- input_audio_buffer_clear_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- input_audio_buffer_clear_event_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- input_audio_buffer_cleared_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- input_audio_buffer_commit_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- input_audio_buffer_commit_event_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- input_audio_buffer_committed_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- input_audio_buffer_speech_started_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- input_audio_buffer_speech_stopped_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- rate_limits_updated_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- realtime_client_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- realtime_client_event_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- realtime_connect_params.cpython-310.pyc
|   |       |   |   |   |   |   |-- realtime_response.cpython-310.pyc
|   |       |   |   |   |   |   |-- realtime_response_status.cpython-310.pyc
|   |       |   |   |   |   |   |-- realtime_response_usage.cpython-310.pyc
|   |       |   |   |   |   |   |-- realtime_server_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_audio_delta_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_audio_done_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_audio_transcript_delta_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_audio_transcript_done_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_cancel_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_cancel_event_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_content_part_added_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_content_part_done_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_create_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_create_event_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_created_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_done_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_function_call_arguments_delta_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_function_call_arguments_done_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_output_item_added_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_output_item_done_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_text_delta_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- response_text_done_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- session.cpython-310.pyc
|   |       |   |   |   |   |   |-- session_create_params.cpython-310.pyc
|   |       |   |   |   |   |   |-- session_create_response.cpython-310.pyc
|   |       |   |   |   |   |   |-- session_created_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- session_update_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- session_update_event_param.cpython-310.pyc
|   |       |   |   |   |   |   |-- session_updated_event.cpython-310.pyc
|   |       |   |   |   |   |   |-- transcription_session.cpython-310.pyc
|   |       |   |   |   |   |   |-- transcription_session_create_params.cpython-310.pyc
|   |       |   |   |   |   |   |-- transcription_session_update.cpython-310.pyc
|   |       |   |   |   |   |   |-- transcription_session_update_param.cpython-310.pyc
|   |       |   |   |   |   |   `-- transcription_session_updated_event.cpython-310.pyc
|   |       |   |   |   |   |-- conversation_created_event.py
|   |       |   |   |   |   |-- conversation_item.py
|   |       |   |   |   |   |-- conversation_item_content.py
|   |       |   |   |   |   |-- conversation_item_content_param.py
|   |       |   |   |   |   |-- conversation_item_create_event.py
|   |       |   |   |   |   |-- conversation_item_create_event_param.py
|   |       |   |   |   |   |-- conversation_item_created_event.py
|   |       |   |   |   |   |-- conversation_item_delete_event.py
|   |       |   |   |   |   |-- conversation_item_delete_event_param.py
|   |       |   |   |   |   |-- conversation_item_deleted_event.py
|   |       |   |   |   |   |-- conversation_item_input_audio_transcription_completed_event.py
|   |       |   |   |   |   |-- conversation_item_input_audio_transcription_delta_event.py
|   |       |   |   |   |   |-- conversation_item_input_audio_transcription_failed_event.py
|   |       |   |   |   |   |-- conversation_item_param.py
|   |       |   |   |   |   |-- conversation_item_retrieve_event.py
|   |       |   |   |   |   |-- conversation_item_retrieve_event_param.py
|   |       |   |   |   |   |-- conversation_item_truncate_event.py
|   |       |   |   |   |   |-- conversation_item_truncate_event_param.py
|   |       |   |   |   |   |-- conversation_item_truncated_event.py
|   |       |   |   |   |   |-- conversation_item_with_reference.py
|   |       |   |   |   |   |-- conversation_item_with_reference_param.py
|   |       |   |   |   |   |-- error_event.py
|   |       |   |   |   |   |-- input_audio_buffer_append_event.py
|   |       |   |   |   |   |-- input_audio_buffer_append_event_param.py
|   |       |   |   |   |   |-- input_audio_buffer_clear_event.py
|   |       |   |   |   |   |-- input_audio_buffer_clear_event_param.py
|   |       |   |   |   |   |-- input_audio_buffer_cleared_event.py
|   |       |   |   |   |   |-- input_audio_buffer_commit_event.py
|   |       |   |   |   |   |-- input_audio_buffer_commit_event_param.py
|   |       |   |   |   |   |-- input_audio_buffer_committed_event.py
|   |       |   |   |   |   |-- input_audio_buffer_speech_started_event.py
|   |       |   |   |   |   |-- input_audio_buffer_speech_stopped_event.py
|   |       |   |   |   |   |-- rate_limits_updated_event.py
|   |       |   |   |   |   |-- realtime_client_event.py
|   |       |   |   |   |   |-- realtime_client_event_param.py
|   |       |   |   |   |   |-- realtime_connect_params.py
|   |       |   |   |   |   |-- realtime_response.py
|   |       |   |   |   |   |-- realtime_response_status.py
|   |       |   |   |   |   |-- realtime_response_usage.py
|   |       |   |   |   |   |-- realtime_server_event.py
|   |       |   |   |   |   |-- response_audio_delta_event.py
|   |       |   |   |   |   |-- response_audio_done_event.py
|   |       |   |   |   |   |-- response_audio_transcript_delta_event.py
|   |       |   |   |   |   |-- response_audio_transcript_done_event.py
|   |       |   |   |   |   |-- response_cancel_event.py
|   |       |   |   |   |   |-- response_cancel_event_param.py
|   |       |   |   |   |   |-- response_content_part_added_event.py
|   |       |   |   |   |   |-- response_content_part_done_event.py
|   |       |   |   |   |   |-- response_create_event.py
|   |       |   |   |   |   |-- response_create_event_param.py
|   |       |   |   |   |   |-- response_created_event.py
|   |       |   |   |   |   |-- response_done_event.py
|   |       |   |   |   |   |-- response_function_call_arguments_delta_event.py
|   |       |   |   |   |   |-- response_function_call_arguments_done_event.py
|   |       |   |   |   |   |-- response_output_item_added_event.py
|   |       |   |   |   |   |-- response_output_item_done_event.py
|   |       |   |   |   |   |-- response_text_delta_event.py
|   |       |   |   |   |   |-- response_text_done_event.py
|   |       |   |   |   |   |-- session.py
|   |       |   |   |   |   |-- session_create_params.py
|   |       |   |   |   |   |-- session_create_response.py
|   |       |   |   |   |   |-- session_created_event.py
|   |       |   |   |   |   |-- session_update_event.py
|   |       |   |   |   |   |-- session_update_event_param.py
|   |       |   |   |   |   |-- session_updated_event.py
|   |       |   |   |   |   |-- transcription_session.py
|   |       |   |   |   |   |-- transcription_session_create_params.py
|   |       |   |   |   |   |-- transcription_session_update.py
|   |       |   |   |   |   |-- transcription_session_update_param.py
|   |       |   |   |   |   `-- transcription_session_updated_event.py
|   |       |   |   |   |-- thread.py
|   |       |   |   |   |-- thread_create_and_run_params.py
|   |       |   |   |   |-- thread_create_params.py
|   |       |   |   |   |-- thread_deleted.py
|   |       |   |   |   |-- thread_update_params.py
|   |       |   |   |   `-- threads
|   |       |   |   |       |-- __init__.py
|   |       |   |   |       |-- __pycache__
|   |       |   |   |       |   |-- __init__.cpython-310.pyc
|   |       |   |   |       |   |-- annotation.cpython-310.pyc
|   |       |   |   |       |   |-- annotation_delta.cpython-310.pyc
|   |       |   |   |       |   |-- file_citation_annotation.cpython-310.pyc
|   |       |   |   |       |   |-- file_citation_delta_annotation.cpython-310.pyc
|   |       |   |   |       |   |-- file_path_annotation.cpython-310.pyc
|   |       |   |   |       |   |-- file_path_delta_annotation.cpython-310.pyc
|   |       |   |   |       |   |-- image_file.cpython-310.pyc
|   |       |   |   |       |   |-- image_file_content_block.cpython-310.pyc
|   |       |   |   |       |   |-- image_file_content_block_param.cpython-310.pyc
|   |       |   |   |       |   |-- image_file_delta.cpython-310.pyc
|   |       |   |   |       |   |-- image_file_delta_block.cpython-310.pyc
|   |       |   |   |       |   |-- image_file_param.cpython-310.pyc
|   |       |   |   |       |   |-- image_url.cpython-310.pyc
|   |       |   |   |       |   |-- image_url_content_block.cpython-310.pyc
|   |       |   |   |       |   |-- image_url_content_block_param.cpython-310.pyc
|   |       |   |   |       |   |-- image_url_delta.cpython-310.pyc
|   |       |   |   |       |   |-- image_url_delta_block.cpython-310.pyc
|   |       |   |   |       |   |-- image_url_param.cpython-310.pyc
|   |       |   |   |       |   |-- message.cpython-310.pyc
|   |       |   |   |       |   |-- message_content.cpython-310.pyc
|   |       |   |   |       |   |-- message_content_delta.cpython-310.pyc
|   |       |   |   |       |   |-- message_content_part_param.cpython-310.pyc
|   |       |   |   |       |   |-- message_create_params.cpython-310.pyc
|   |       |   |   |       |   |-- message_deleted.cpython-310.pyc
|   |       |   |   |       |   |-- message_delta.cpython-310.pyc
|   |       |   |   |       |   |-- message_delta_event.cpython-310.pyc
|   |       |   |   |       |   |-- message_list_params.cpython-310.pyc
|   |       |   |   |       |   |-- message_update_params.cpython-310.pyc
|   |       |   |   |       |   |-- refusal_content_block.cpython-310.pyc
|   |       |   |   |       |   |-- refusal_delta_block.cpython-310.pyc
|   |       |   |   |       |   |-- required_action_function_tool_call.cpython-310.pyc
|   |       |   |   |       |   |-- run.cpython-310.pyc
|   |       |   |   |       |   |-- run_create_params.cpython-310.pyc
|   |       |   |   |       |   |-- run_list_params.cpython-310.pyc
|   |       |   |   |       |   |-- run_status.cpython-310.pyc
|   |       |   |   |       |   |-- run_submit_tool_outputs_params.cpython-310.pyc
|   |       |   |   |       |   |-- run_update_params.cpython-310.pyc
|   |       |   |   |       |   |-- text.cpython-310.pyc
|   |       |   |   |       |   |-- text_content_block.cpython-310.pyc
|   |       |   |   |       |   |-- text_content_block_param.cpython-310.pyc
|   |       |   |   |       |   |-- text_delta.cpython-310.pyc
|   |       |   |   |       |   `-- text_delta_block.cpython-310.pyc
|   |       |   |   |       |-- annotation.py
|   |       |   |   |       |-- annotation_delta.py
|   |       |   |   |       |-- file_citation_annotation.py
|   |       |   |   |       |-- file_citation_delta_annotation.py
|   |       |   |   |       |-- file_path_annotation.py
|   |       |   |   |       |-- file_path_delta_annotation.py
|   |       |   |   |       |-- image_file.py
|   |       |   |   |       |-- image_file_content_block.py
|   |       |   |   |       |-- image_file_content_block_param.py
|   |       |   |   |       |-- image_file_delta.py
|   |       |   |   |       |-- image_file_delta_block.py
|   |       |   |   |       |-- image_file_param.py
|   |       |   |   |       |-- image_url.py
|   |       |   |   |       |-- image_url_content_block.py
|   |       |   |   |       |-- image_url_content_block_param.py
|   |       |   |   |       |-- image_url_delta.py
|   |       |   |   |       |-- image_url_delta_block.py
|   |       |   |   |       |-- image_url_param.py
|   |       |   |   |       |-- message.py
|   |       |   |   |       |-- message_content.py
|   |       |   |   |       |-- message_content_delta.py
|   |       |   |   |       |-- message_content_part_param.py
|   |       |   |   |       |-- message_create_params.py
|   |       |   |   |       |-- message_deleted.py
|   |       |   |   |       |-- message_delta.py
|   |       |   |   |       |-- message_delta_event.py
|   |       |   |   |       |-- message_list_params.py
|   |       |   |   |       |-- message_update_params.py
|   |       |   |   |       |-- refusal_content_block.py
|   |       |   |   |       |-- refusal_delta_block.py
|   |       |   |   |       |-- required_action_function_tool_call.py
|   |       |   |   |       |-- run.py
|   |       |   |   |       |-- run_create_params.py
|   |       |   |   |       |-- run_list_params.py
|   |       |   |   |       |-- run_status.py
|   |       |   |   |       |-- run_submit_tool_outputs_params.py
|   |       |   |   |       |-- run_update_params.py
|   |       |   |   |       |-- runs
|   |       |   |   |       |   |-- __init__.py
|   |       |   |   |       |   |-- __pycache__
|   |       |   |   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |       |   |   |-- code_interpreter_logs.cpython-310.pyc
|   |       |   |   |       |   |   |-- code_interpreter_output_image.cpython-310.pyc
|   |       |   |   |       |   |   |-- code_interpreter_tool_call.cpython-310.pyc
|   |       |   |   |       |   |   |-- code_interpreter_tool_call_delta.cpython-310.pyc
|   |       |   |   |       |   |   |-- file_search_tool_call.cpython-310.pyc
|   |       |   |   |       |   |   |-- file_search_tool_call_delta.cpython-310.pyc
|   |       |   |   |       |   |   |-- function_tool_call.cpython-310.pyc
|   |       |   |   |       |   |   |-- function_tool_call_delta.cpython-310.pyc
|   |       |   |   |       |   |   |-- message_creation_step_details.cpython-310.pyc
|   |       |   |   |       |   |   |-- run_step.cpython-310.pyc
|   |       |   |   |       |   |   |-- run_step_delta.cpython-310.pyc
|   |       |   |   |       |   |   |-- run_step_delta_event.cpython-310.pyc
|   |       |   |   |       |   |   |-- run_step_delta_message_delta.cpython-310.pyc
|   |       |   |   |       |   |   |-- run_step_include.cpython-310.pyc
|   |       |   |   |       |   |   |-- step_list_params.cpython-310.pyc
|   |       |   |   |       |   |   |-- step_retrieve_params.cpython-310.pyc
|   |       |   |   |       |   |   |-- tool_call.cpython-310.pyc
|   |       |   |   |       |   |   |-- tool_call_delta.cpython-310.pyc
|   |       |   |   |       |   |   |-- tool_call_delta_object.cpython-310.pyc
|   |       |   |   |       |   |   `-- tool_calls_step_details.cpython-310.pyc
|   |       |   |   |       |   |-- code_interpreter_logs.py
|   |       |   |   |       |   |-- code_interpreter_output_image.py
|   |       |   |   |       |   |-- code_interpreter_tool_call.py
|   |       |   |   |       |   |-- code_interpreter_tool_call_delta.py
|   |       |   |   |       |   |-- file_search_tool_call.py
|   |       |   |   |       |   |-- file_search_tool_call_delta.py
|   |       |   |   |       |   |-- function_tool_call.py
|   |       |   |   |       |   |-- function_tool_call_delta.py
|   |       |   |   |       |   |-- message_creation_step_details.py
|   |       |   |   |       |   |-- run_step.py
|   |       |   |   |       |   |-- run_step_delta.py
|   |       |   |   |       |   |-- run_step_delta_event.py
|   |       |   |   |       |   |-- run_step_delta_message_delta.py
|   |       |   |   |       |   |-- run_step_include.py
|   |       |   |   |       |   |-- step_list_params.py
|   |       |   |   |       |   |-- step_retrieve_params.py
|   |       |   |   |       |   |-- tool_call.py
|   |       |   |   |       |   |-- tool_call_delta.py
|   |       |   |   |       |   |-- tool_call_delta_object.py
|   |       |   |   |       |   `-- tool_calls_step_details.py
|   |       |   |   |       |-- text.py
|   |       |   |   |       |-- text_content_block.py
|   |       |   |   |       |-- text_content_block_param.py
|   |       |   |   |       |-- text_delta.py
|   |       |   |   |       `-- text_delta_block.py
|   |       |   |   |-- chat
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_assistant_message_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_audio.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_audio_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_chunk.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_content_part_image_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_content_part_input_audio_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_content_part_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_content_part_refusal_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_content_part_text_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_deleted.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_developer_message_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_function_call_option_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_function_message_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_message.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_message_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_message_tool_call.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_message_tool_call_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_modality.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_named_tool_choice_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_prediction_content_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_reasoning_effort.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_role.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_store_message.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_stream_options_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_system_message_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_token_logprob.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_tool.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_tool_choice_option_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_tool_message_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_tool_param.cpython-310.pyc
|   |       |   |   |   |   |-- chat_completion_user_message_param.cpython-310.pyc
|   |       |   |   |   |   |-- completion_create_params.cpython-310.pyc
|   |       |   |   |   |   |-- completion_list_params.cpython-310.pyc
|   |       |   |   |   |   |-- completion_update_params.cpython-310.pyc
|   |       |   |   |   |   |-- parsed_chat_completion.cpython-310.pyc
|   |       |   |   |   |   `-- parsed_function_tool_call.cpython-310.pyc
|   |       |   |   |   |-- chat_completion.py
|   |       |   |   |   |-- chat_completion_assistant_message_param.py
|   |       |   |   |   |-- chat_completion_audio.py
|   |       |   |   |   |-- chat_completion_audio_param.py
|   |       |   |   |   |-- chat_completion_chunk.py
|   |       |   |   |   |-- chat_completion_content_part_image_param.py
|   |       |   |   |   |-- chat_completion_content_part_input_audio_param.py
|   |       |   |   |   |-- chat_completion_content_part_param.py
|   |       |   |   |   |-- chat_completion_content_part_refusal_param.py
|   |       |   |   |   |-- chat_completion_content_part_text_param.py
|   |       |   |   |   |-- chat_completion_deleted.py
|   |       |   |   |   |-- chat_completion_developer_message_param.py
|   |       |   |   |   |-- chat_completion_function_call_option_param.py
|   |       |   |   |   |-- chat_completion_function_message_param.py
|   |       |   |   |   |-- chat_completion_message.py
|   |       |   |   |   |-- chat_completion_message_param.py
|   |       |   |   |   |-- chat_completion_message_tool_call.py
|   |       |   |   |   |-- chat_completion_message_tool_call_param.py
|   |       |   |   |   |-- chat_completion_modality.py
|   |       |   |   |   |-- chat_completion_named_tool_choice_param.py
|   |       |   |   |   |-- chat_completion_prediction_content_param.py
|   |       |   |   |   |-- chat_completion_reasoning_effort.py
|   |       |   |   |   |-- chat_completion_role.py
|   |       |   |   |   |-- chat_completion_store_message.py
|   |       |   |   |   |-- chat_completion_stream_options_param.py
|   |       |   |   |   |-- chat_completion_system_message_param.py
|   |       |   |   |   |-- chat_completion_token_logprob.py
|   |       |   |   |   |-- chat_completion_tool.py
|   |       |   |   |   |-- chat_completion_tool_choice_option_param.py
|   |       |   |   |   |-- chat_completion_tool_message_param.py
|   |       |   |   |   |-- chat_completion_tool_param.py
|   |       |   |   |   |-- chat_completion_user_message_param.py
|   |       |   |   |   |-- completion_create_params.py
|   |       |   |   |   |-- completion_list_params.py
|   |       |   |   |   |-- completion_update_params.py
|   |       |   |   |   |-- completions
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   `-- message_list_params.cpython-310.pyc
|   |       |   |   |   |   `-- message_list_params.py
|   |       |   |   |   |-- parsed_chat_completion.py
|   |       |   |   |   `-- parsed_function_tool_call.py
|   |       |   |   |-- chat_model.py
|   |       |   |   |-- completion.py
|   |       |   |   |-- completion_choice.py
|   |       |   |   |-- completion_create_params.py
|   |       |   |   |-- completion_usage.py
|   |       |   |   |-- container_create_params.py
|   |       |   |   |-- container_create_response.py
|   |       |   |   |-- container_list_params.py
|   |       |   |   |-- container_list_response.py
|   |       |   |   |-- container_retrieve_response.py
|   |       |   |   |-- containers
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- file_create_params.cpython-310.pyc
|   |       |   |   |   |   |-- file_create_response.cpython-310.pyc
|   |       |   |   |   |   |-- file_list_params.cpython-310.pyc
|   |       |   |   |   |   |-- file_list_response.cpython-310.pyc
|   |       |   |   |   |   `-- file_retrieve_response.cpython-310.pyc
|   |       |   |   |   |-- file_create_params.py
|   |       |   |   |   |-- file_create_response.py
|   |       |   |   |   |-- file_list_params.py
|   |       |   |   |   |-- file_list_response.py
|   |       |   |   |   |-- file_retrieve_response.py
|   |       |   |   |   `-- files
|   |       |   |   |       |-- __init__.py
|   |       |   |   |       `-- __pycache__
|   |       |   |   |           `-- __init__.cpython-310.pyc
|   |       |   |   |-- create_embedding_response.py
|   |       |   |   |-- embedding.py
|   |       |   |   |-- embedding_create_params.py
|   |       |   |   |-- embedding_model.py
|   |       |   |   |-- eval_create_params.py
|   |       |   |   |-- eval_create_response.py
|   |       |   |   |-- eval_custom_data_source_config.py
|   |       |   |   |-- eval_delete_response.py
|   |       |   |   |-- eval_list_params.py
|   |       |   |   |-- eval_list_response.py
|   |       |   |   |-- eval_retrieve_response.py
|   |       |   |   |-- eval_stored_completions_data_source_config.py
|   |       |   |   |-- eval_update_params.py
|   |       |   |   |-- eval_update_response.py
|   |       |   |   |-- evals
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- create_eval_completions_run_data_source.cpython-310.pyc
|   |       |   |   |   |   |-- create_eval_completions_run_data_source_param.cpython-310.pyc
|   |       |   |   |   |   |-- create_eval_jsonl_run_data_source.cpython-310.pyc
|   |       |   |   |   |   |-- create_eval_jsonl_run_data_source_param.cpython-310.pyc
|   |       |   |   |   |   |-- eval_api_error.cpython-310.pyc
|   |       |   |   |   |   |-- run_cancel_response.cpython-310.pyc
|   |       |   |   |   |   |-- run_create_params.cpython-310.pyc
|   |       |   |   |   |   |-- run_create_response.cpython-310.pyc
|   |       |   |   |   |   |-- run_delete_response.cpython-310.pyc
|   |       |   |   |   |   |-- run_list_params.cpython-310.pyc
|   |       |   |   |   |   |-- run_list_response.cpython-310.pyc
|   |       |   |   |   |   `-- run_retrieve_response.cpython-310.pyc
|   |       |   |   |   |-- create_eval_completions_run_data_source.py
|   |       |   |   |   |-- create_eval_completions_run_data_source_param.py
|   |       |   |   |   |-- create_eval_jsonl_run_data_source.py
|   |       |   |   |   |-- create_eval_jsonl_run_data_source_param.py
|   |       |   |   |   |-- eval_api_error.py
|   |       |   |   |   |-- run_cancel_response.py
|   |       |   |   |   |-- run_create_params.py
|   |       |   |   |   |-- run_create_response.py
|   |       |   |   |   |-- run_delete_response.py
|   |       |   |   |   |-- run_list_params.py
|   |       |   |   |   |-- run_list_response.py
|   |       |   |   |   |-- run_retrieve_response.py
|   |       |   |   |   `-- runs
|   |       |   |   |       |-- __init__.py
|   |       |   |   |       |-- __pycache__
|   |       |   |   |       |   |-- __init__.cpython-310.pyc
|   |       |   |   |       |   |-- output_item_list_params.cpython-310.pyc
|   |       |   |   |       |   |-- output_item_list_response.cpython-310.pyc
|   |       |   |   |       |   `-- output_item_retrieve_response.cpython-310.pyc
|   |       |   |   |       |-- output_item_list_params.py
|   |       |   |   |       |-- output_item_list_response.py
|   |       |   |   |       `-- output_item_retrieve_response.py
|   |       |   |   |-- file_chunking_strategy.py
|   |       |   |   |-- file_chunking_strategy_param.py
|   |       |   |   |-- file_content.py
|   |       |   |   |-- file_create_params.py
|   |       |   |   |-- file_deleted.py
|   |       |   |   |-- file_list_params.py
|   |       |   |   |-- file_object.py
|   |       |   |   |-- file_purpose.py
|   |       |   |   |-- fine_tuning
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- dpo_hyperparameters.cpython-310.pyc
|   |       |   |   |   |   |-- dpo_hyperparameters_param.cpython-310.pyc
|   |       |   |   |   |   |-- dpo_method.cpython-310.pyc
|   |       |   |   |   |   |-- dpo_method_param.cpython-310.pyc
|   |       |   |   |   |   |-- fine_tuning_job.cpython-310.pyc
|   |       |   |   |   |   |-- fine_tuning_job_event.cpython-310.pyc
|   |       |   |   |   |   |-- fine_tuning_job_integration.cpython-310.pyc
|   |       |   |   |   |   |-- fine_tuning_job_wandb_integration.cpython-310.pyc
|   |       |   |   |   |   |-- fine_tuning_job_wandb_integration_object.cpython-310.pyc
|   |       |   |   |   |   |-- job_create_params.cpython-310.pyc
|   |       |   |   |   |   |-- job_list_events_params.cpython-310.pyc
|   |       |   |   |   |   |-- job_list_params.cpython-310.pyc
|   |       |   |   |   |   |-- reinforcement_hyperparameters.cpython-310.pyc
|   |       |   |   |   |   |-- reinforcement_hyperparameters_param.cpython-310.pyc
|   |       |   |   |   |   |-- reinforcement_method.cpython-310.pyc
|   |       |   |   |   |   |-- reinforcement_method_param.cpython-310.pyc
|   |       |   |   |   |   |-- supervised_hyperparameters.cpython-310.pyc
|   |       |   |   |   |   |-- supervised_hyperparameters_param.cpython-310.pyc
|   |       |   |   |   |   |-- supervised_method.cpython-310.pyc
|   |       |   |   |   |   `-- supervised_method_param.cpython-310.pyc
|   |       |   |   |   |-- alpha
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- grader_run_params.cpython-310.pyc
|   |       |   |   |   |   |   |-- grader_run_response.cpython-310.pyc
|   |       |   |   |   |   |   |-- grader_validate_params.cpython-310.pyc
|   |       |   |   |   |   |   `-- grader_validate_response.cpython-310.pyc
|   |       |   |   |   |   |-- grader_run_params.py
|   |       |   |   |   |   |-- grader_run_response.py
|   |       |   |   |   |   |-- grader_validate_params.py
|   |       |   |   |   |   `-- grader_validate_response.py
|   |       |   |   |   |-- checkpoints
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- permission_create_params.cpython-310.pyc
|   |       |   |   |   |   |   |-- permission_create_response.cpython-310.pyc
|   |       |   |   |   |   |   |-- permission_delete_response.cpython-310.pyc
|   |       |   |   |   |   |   |-- permission_retrieve_params.cpython-310.pyc
|   |       |   |   |   |   |   `-- permission_retrieve_response.cpython-310.pyc
|   |       |   |   |   |   |-- permission_create_params.py
|   |       |   |   |   |   |-- permission_create_response.py
|   |       |   |   |   |   |-- permission_delete_response.py
|   |       |   |   |   |   |-- permission_retrieve_params.py
|   |       |   |   |   |   `-- permission_retrieve_response.py
|   |       |   |   |   |-- dpo_hyperparameters.py
|   |       |   |   |   |-- dpo_hyperparameters_param.py
|   |       |   |   |   |-- dpo_method.py
|   |       |   |   |   |-- dpo_method_param.py
|   |       |   |   |   |-- fine_tuning_job.py
|   |       |   |   |   |-- fine_tuning_job_event.py
|   |       |   |   |   |-- fine_tuning_job_integration.py
|   |       |   |   |   |-- fine_tuning_job_wandb_integration.py
|   |       |   |   |   |-- fine_tuning_job_wandb_integration_object.py
|   |       |   |   |   |-- job_create_params.py
|   |       |   |   |   |-- job_list_events_params.py
|   |       |   |   |   |-- job_list_params.py
|   |       |   |   |   |-- jobs
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- checkpoint_list_params.cpython-310.pyc
|   |       |   |   |   |   |   `-- fine_tuning_job_checkpoint.cpython-310.pyc
|   |       |   |   |   |   |-- checkpoint_list_params.py
|   |       |   |   |   |   `-- fine_tuning_job_checkpoint.py
|   |       |   |   |   |-- reinforcement_hyperparameters.py
|   |       |   |   |   |-- reinforcement_hyperparameters_param.py
|   |       |   |   |   |-- reinforcement_method.py
|   |       |   |   |   |-- reinforcement_method_param.py
|   |       |   |   |   |-- supervised_hyperparameters.py
|   |       |   |   |   |-- supervised_hyperparameters_param.py
|   |       |   |   |   |-- supervised_method.py
|   |       |   |   |   `-- supervised_method_param.py
|   |       |   |   |-- graders
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- label_model_grader.cpython-310.pyc
|   |       |   |   |   |   |-- label_model_grader_param.cpython-310.pyc
|   |       |   |   |   |   |-- multi_grader.cpython-310.pyc
|   |       |   |   |   |   |-- multi_grader_param.cpython-310.pyc
|   |       |   |   |   |   |-- python_grader.cpython-310.pyc
|   |       |   |   |   |   |-- python_grader_param.cpython-310.pyc
|   |       |   |   |   |   |-- score_model_grader.cpython-310.pyc
|   |       |   |   |   |   |-- score_model_grader_param.cpython-310.pyc
|   |       |   |   |   |   |-- string_check_grader.cpython-310.pyc
|   |       |   |   |   |   |-- string_check_grader_param.cpython-310.pyc
|   |       |   |   |   |   |-- text_similarity_grader.cpython-310.pyc
|   |       |   |   |   |   `-- text_similarity_grader_param.cpython-310.pyc
|   |       |   |   |   |-- label_model_grader.py
|   |       |   |   |   |-- label_model_grader_param.py
|   |       |   |   |   |-- multi_grader.py
|   |       |   |   |   |-- multi_grader_param.py
|   |       |   |   |   |-- python_grader.py
|   |       |   |   |   |-- python_grader_param.py
|   |       |   |   |   |-- score_model_grader.py
|   |       |   |   |   |-- score_model_grader_param.py
|   |       |   |   |   |-- string_check_grader.py
|   |       |   |   |   |-- string_check_grader_param.py
|   |       |   |   |   |-- text_similarity_grader.py
|   |       |   |   |   `-- text_similarity_grader_param.py
|   |       |   |   |-- image.py
|   |       |   |   |-- image_create_variation_params.py
|   |       |   |   |-- image_edit_params.py
|   |       |   |   |-- image_generate_params.py
|   |       |   |   |-- image_model.py
|   |       |   |   |-- images_response.py
|   |       |   |   |-- model.py
|   |       |   |   |-- model_deleted.py
|   |       |   |   |-- moderation.py
|   |       |   |   |-- moderation_create_params.py
|   |       |   |   |-- moderation_create_response.py
|   |       |   |   |-- moderation_image_url_input_param.py
|   |       |   |   |-- moderation_model.py
|   |       |   |   |-- moderation_multi_modal_input_param.py
|   |       |   |   |-- moderation_text_input_param.py
|   |       |   |   |-- other_file_chunking_strategy_object.py
|   |       |   |   |-- responses
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- computer_tool.cpython-310.pyc
|   |       |   |   |   |   |-- computer_tool_param.cpython-310.pyc
|   |       |   |   |   |   |-- easy_input_message.cpython-310.pyc
|   |       |   |   |   |   |-- easy_input_message_param.cpython-310.pyc
|   |       |   |   |   |   |-- file_search_tool.cpython-310.pyc
|   |       |   |   |   |   |-- file_search_tool_param.cpython-310.pyc
|   |       |   |   |   |   |-- function_tool.cpython-310.pyc
|   |       |   |   |   |   |-- function_tool_param.cpython-310.pyc
|   |       |   |   |   |   |-- input_item_list_params.cpython-310.pyc
|   |       |   |   |   |   |-- parsed_response.cpython-310.pyc
|   |       |   |   |   |   |-- response.cpython-310.pyc
|   |       |   |   |   |   |-- response_audio_delta_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_audio_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_audio_transcript_delta_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_audio_transcript_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_code_interpreter_call_code_delta_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_code_interpreter_call_code_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_code_interpreter_call_completed_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_code_interpreter_call_in_progress_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_code_interpreter_call_interpreting_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_code_interpreter_tool_call.cpython-310.pyc
|   |       |   |   |   |   |-- response_code_interpreter_tool_call_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_completed_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_computer_tool_call.cpython-310.pyc
|   |       |   |   |   |   |-- response_computer_tool_call_output_item.cpython-310.pyc
|   |       |   |   |   |   |-- response_computer_tool_call_output_screenshot.cpython-310.pyc
|   |       |   |   |   |   |-- response_computer_tool_call_output_screenshot_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_computer_tool_call_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_content_part_added_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_content_part_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_create_params.cpython-310.pyc
|   |       |   |   |   |   |-- response_created_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_error.cpython-310.pyc
|   |       |   |   |   |   |-- response_error_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_failed_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_file_search_call_completed_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_file_search_call_in_progress_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_file_search_call_searching_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_file_search_tool_call.cpython-310.pyc
|   |       |   |   |   |   |-- response_file_search_tool_call_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_format_text_config.cpython-310.pyc
|   |       |   |   |   |   |-- response_format_text_config_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_format_text_json_schema_config.cpython-310.pyc
|   |       |   |   |   |   |-- response_format_text_json_schema_config_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_function_call_arguments_delta_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_function_call_arguments_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_function_tool_call.cpython-310.pyc
|   |       |   |   |   |   |-- response_function_tool_call_item.cpython-310.pyc
|   |       |   |   |   |   |-- response_function_tool_call_output_item.cpython-310.pyc
|   |       |   |   |   |   |-- response_function_tool_call_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_function_web_search.cpython-310.pyc
|   |       |   |   |   |   |-- response_function_web_search_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_image_gen_call_completed_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_image_gen_call_generating_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_image_gen_call_in_progress_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_image_gen_call_partial_image_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_in_progress_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_includable.cpython-310.pyc
|   |       |   |   |   |   |-- response_incomplete_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_content.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_content_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_file.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_file_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_image.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_image_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_item.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_item_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_message_content_list.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_message_content_list_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_message_item.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_text.cpython-310.pyc
|   |       |   |   |   |   |-- response_input_text_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_item.cpython-310.pyc
|   |       |   |   |   |   |-- response_item_list.cpython-310.pyc
|   |       |   |   |   |   |-- response_mcp_call_arguments_delta_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_mcp_call_arguments_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_mcp_call_completed_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_mcp_call_failed_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_mcp_call_in_progress_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_mcp_list_tools_completed_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_mcp_list_tools_failed_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_mcp_list_tools_in_progress_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_output_item.cpython-310.pyc
|   |       |   |   |   |   |-- response_output_item_added_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_output_item_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_output_message.cpython-310.pyc
|   |       |   |   |   |   |-- response_output_message_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_output_refusal.cpython-310.pyc
|   |       |   |   |   |   |-- response_output_refusal_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_output_text.cpython-310.pyc
|   |       |   |   |   |   |-- response_output_text_annotation_added_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_output_text_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_prompt.cpython-310.pyc
|   |       |   |   |   |   |-- response_prompt_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_queued_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_reasoning_delta_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_reasoning_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_reasoning_item.cpython-310.pyc
|   |       |   |   |   |   |-- response_reasoning_item_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_reasoning_summary_delta_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_reasoning_summary_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_reasoning_summary_part_added_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_reasoning_summary_part_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_reasoning_summary_text_delta_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_reasoning_summary_text_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_refusal_delta_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_refusal_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_retrieve_params.cpython-310.pyc
|   |       |   |   |   |   |-- response_status.cpython-310.pyc
|   |       |   |   |   |   |-- response_stream_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_text_config.cpython-310.pyc
|   |       |   |   |   |   |-- response_text_config_param.cpython-310.pyc
|   |       |   |   |   |   |-- response_text_delta_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_text_done_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_usage.cpython-310.pyc
|   |       |   |   |   |   |-- response_web_search_call_completed_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_web_search_call_in_progress_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_web_search_call_searching_event.cpython-310.pyc
|   |       |   |   |   |   |-- tool.cpython-310.pyc
|   |       |   |   |   |   |-- tool_choice_function.cpython-310.pyc
|   |       |   |   |   |   |-- tool_choice_function_param.cpython-310.pyc
|   |       |   |   |   |   |-- tool_choice_mcp.cpython-310.pyc
|   |       |   |   |   |   |-- tool_choice_mcp_param.cpython-310.pyc
|   |       |   |   |   |   |-- tool_choice_options.cpython-310.pyc
|   |       |   |   |   |   |-- tool_choice_types.cpython-310.pyc
|   |       |   |   |   |   |-- tool_choice_types_param.cpython-310.pyc
|   |       |   |   |   |   |-- tool_param.cpython-310.pyc
|   |       |   |   |   |   |-- web_search_tool.cpython-310.pyc
|   |       |   |   |   |   `-- web_search_tool_param.cpython-310.pyc
|   |       |   |   |   |-- computer_tool.py
|   |       |   |   |   |-- computer_tool_param.py
|   |       |   |   |   |-- easy_input_message.py
|   |       |   |   |   |-- easy_input_message_param.py
|   |       |   |   |   |-- file_search_tool.py
|   |       |   |   |   |-- file_search_tool_param.py
|   |       |   |   |   |-- function_tool.py
|   |       |   |   |   |-- function_tool_param.py
|   |       |   |   |   |-- input_item_list_params.py
|   |       |   |   |   |-- parsed_response.py
|   |       |   |   |   |-- response.py
|   |       |   |   |   |-- response_audio_delta_event.py
|   |       |   |   |   |-- response_audio_done_event.py
|   |       |   |   |   |-- response_audio_transcript_delta_event.py
|   |       |   |   |   |-- response_audio_transcript_done_event.py
|   |       |   |   |   |-- response_code_interpreter_call_code_delta_event.py
|   |       |   |   |   |-- response_code_interpreter_call_code_done_event.py
|   |       |   |   |   |-- response_code_interpreter_call_completed_event.py
|   |       |   |   |   |-- response_code_interpreter_call_in_progress_event.py
|   |       |   |   |   |-- response_code_interpreter_call_interpreting_event.py
|   |       |   |   |   |-- response_code_interpreter_tool_call.py
|   |       |   |   |   |-- response_code_interpreter_tool_call_param.py
|   |       |   |   |   |-- response_completed_event.py
|   |       |   |   |   |-- response_computer_tool_call.py
|   |       |   |   |   |-- response_computer_tool_call_output_item.py
|   |       |   |   |   |-- response_computer_tool_call_output_screenshot.py
|   |       |   |   |   |-- response_computer_tool_call_output_screenshot_param.py
|   |       |   |   |   |-- response_computer_tool_call_param.py
|   |       |   |   |   |-- response_content_part_added_event.py
|   |       |   |   |   |-- response_content_part_done_event.py
|   |       |   |   |   |-- response_create_params.py
|   |       |   |   |   |-- response_created_event.py
|   |       |   |   |   |-- response_error.py
|   |       |   |   |   |-- response_error_event.py
|   |       |   |   |   |-- response_failed_event.py
|   |       |   |   |   |-- response_file_search_call_completed_event.py
|   |       |   |   |   |-- response_file_search_call_in_progress_event.py
|   |       |   |   |   |-- response_file_search_call_searching_event.py
|   |       |   |   |   |-- response_file_search_tool_call.py
|   |       |   |   |   |-- response_file_search_tool_call_param.py
|   |       |   |   |   |-- response_format_text_config.py
|   |       |   |   |   |-- response_format_text_config_param.py
|   |       |   |   |   |-- response_format_text_json_schema_config.py
|   |       |   |   |   |-- response_format_text_json_schema_config_param.py
|   |       |   |   |   |-- response_function_call_arguments_delta_event.py
|   |       |   |   |   |-- response_function_call_arguments_done_event.py
|   |       |   |   |   |-- response_function_tool_call.py
|   |       |   |   |   |-- response_function_tool_call_item.py
|   |       |   |   |   |-- response_function_tool_call_output_item.py
|   |       |   |   |   |-- response_function_tool_call_param.py
|   |       |   |   |   |-- response_function_web_search.py
|   |       |   |   |   |-- response_function_web_search_param.py
|   |       |   |   |   |-- response_image_gen_call_completed_event.py
|   |       |   |   |   |-- response_image_gen_call_generating_event.py
|   |       |   |   |   |-- response_image_gen_call_in_progress_event.py
|   |       |   |   |   |-- response_image_gen_call_partial_image_event.py
|   |       |   |   |   |-- response_in_progress_event.py
|   |       |   |   |   |-- response_includable.py
|   |       |   |   |   |-- response_incomplete_event.py
|   |       |   |   |   |-- response_input_content.py
|   |       |   |   |   |-- response_input_content_param.py
|   |       |   |   |   |-- response_input_file.py
|   |       |   |   |   |-- response_input_file_param.py
|   |       |   |   |   |-- response_input_image.py
|   |       |   |   |   |-- response_input_image_param.py
|   |       |   |   |   |-- response_input_item.py
|   |       |   |   |   |-- response_input_item_param.py
|   |       |   |   |   |-- response_input_message_content_list.py
|   |       |   |   |   |-- response_input_message_content_list_param.py
|   |       |   |   |   |-- response_input_message_item.py
|   |       |   |   |   |-- response_input_param.py
|   |       |   |   |   |-- response_input_text.py
|   |       |   |   |   |-- response_input_text_param.py
|   |       |   |   |   |-- response_item.py
|   |       |   |   |   |-- response_item_list.py
|   |       |   |   |   |-- response_mcp_call_arguments_delta_event.py
|   |       |   |   |   |-- response_mcp_call_arguments_done_event.py
|   |       |   |   |   |-- response_mcp_call_completed_event.py
|   |       |   |   |   |-- response_mcp_call_failed_event.py
|   |       |   |   |   |-- response_mcp_call_in_progress_event.py
|   |       |   |   |   |-- response_mcp_list_tools_completed_event.py
|   |       |   |   |   |-- response_mcp_list_tools_failed_event.py
|   |       |   |   |   |-- response_mcp_list_tools_in_progress_event.py
|   |       |   |   |   |-- response_output_item.py
|   |       |   |   |   |-- response_output_item_added_event.py
|   |       |   |   |   |-- response_output_item_done_event.py
|   |       |   |   |   |-- response_output_message.py
|   |       |   |   |   |-- response_output_message_param.py
|   |       |   |   |   |-- response_output_refusal.py
|   |       |   |   |   |-- response_output_refusal_param.py
|   |       |   |   |   |-- response_output_text.py
|   |       |   |   |   |-- response_output_text_annotation_added_event.py
|   |       |   |   |   |-- response_output_text_param.py
|   |       |   |   |   |-- response_prompt.py
|   |       |   |   |   |-- response_prompt_param.py
|   |       |   |   |   |-- response_queued_event.py
|   |       |   |   |   |-- response_reasoning_delta_event.py
|   |       |   |   |   |-- response_reasoning_done_event.py
|   |       |   |   |   |-- response_reasoning_item.py
|   |       |   |   |   |-- response_reasoning_item_param.py
|   |       |   |   |   |-- response_reasoning_summary_delta_event.py
|   |       |   |   |   |-- response_reasoning_summary_done_event.py
|   |       |   |   |   |-- response_reasoning_summary_part_added_event.py
|   |       |   |   |   |-- response_reasoning_summary_part_done_event.py
|   |       |   |   |   |-- response_reasoning_summary_text_delta_event.py
|   |       |   |   |   |-- response_reasoning_summary_text_done_event.py
|   |       |   |   |   |-- response_refusal_delta_event.py
|   |       |   |   |   |-- response_refusal_done_event.py
|   |       |   |   |   |-- response_retrieve_params.py
|   |       |   |   |   |-- response_status.py
|   |       |   |   |   |-- response_stream_event.py
|   |       |   |   |   |-- response_text_config.py
|   |       |   |   |   |-- response_text_config_param.py
|   |       |   |   |   |-- response_text_delta_event.py
|   |       |   |   |   |-- response_text_done_event.py
|   |       |   |   |   |-- response_usage.py
|   |       |   |   |   |-- response_web_search_call_completed_event.py
|   |       |   |   |   |-- response_web_search_call_in_progress_event.py
|   |       |   |   |   |-- response_web_search_call_searching_event.py
|   |       |   |   |   |-- tool.py
|   |       |   |   |   |-- tool_choice_function.py
|   |       |   |   |   |-- tool_choice_function_param.py
|   |       |   |   |   |-- tool_choice_mcp.py
|   |       |   |   |   |-- tool_choice_mcp_param.py
|   |       |   |   |   |-- tool_choice_options.py
|   |       |   |   |   |-- tool_choice_types.py
|   |       |   |   |   |-- tool_choice_types_param.py
|   |       |   |   |   |-- tool_param.py
|   |       |   |   |   |-- web_search_tool.py
|   |       |   |   |   `-- web_search_tool_param.py
|   |       |   |   |-- shared
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- all_models.cpython-310.pyc
|   |       |   |   |   |   |-- chat_model.cpython-310.pyc
|   |       |   |   |   |   |-- comparison_filter.cpython-310.pyc
|   |       |   |   |   |   |-- compound_filter.cpython-310.pyc
|   |       |   |   |   |   |-- error_object.cpython-310.pyc
|   |       |   |   |   |   |-- function_definition.cpython-310.pyc
|   |       |   |   |   |   |-- function_parameters.cpython-310.pyc
|   |       |   |   |   |   |-- metadata.cpython-310.pyc
|   |       |   |   |   |   |-- reasoning.cpython-310.pyc
|   |       |   |   |   |   |-- reasoning_effort.cpython-310.pyc
|   |       |   |   |   |   |-- response_format_json_object.cpython-310.pyc
|   |       |   |   |   |   |-- response_format_json_schema.cpython-310.pyc
|   |       |   |   |   |   |-- response_format_text.cpython-310.pyc
|   |       |   |   |   |   `-- responses_model.cpython-310.pyc
|   |       |   |   |   |-- all_models.py
|   |       |   |   |   |-- chat_model.py
|   |       |   |   |   |-- comparison_filter.py
|   |       |   |   |   |-- compound_filter.py
|   |       |   |   |   |-- error_object.py
|   |       |   |   |   |-- function_definition.py
|   |       |   |   |   |-- function_parameters.py
|   |       |   |   |   |-- metadata.py
|   |       |   |   |   |-- reasoning.py
|   |       |   |   |   |-- reasoning_effort.py
|   |       |   |   |   |-- response_format_json_object.py
|   |       |   |   |   |-- response_format_json_schema.py
|   |       |   |   |   |-- response_format_text.py
|   |       |   |   |   `-- responses_model.py
|   |       |   |   |-- shared_params
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- chat_model.cpython-310.pyc
|   |       |   |   |   |   |-- comparison_filter.cpython-310.pyc
|   |       |   |   |   |   |-- compound_filter.cpython-310.pyc
|   |       |   |   |   |   |-- function_definition.cpython-310.pyc
|   |       |   |   |   |   |-- function_parameters.cpython-310.pyc
|   |       |   |   |   |   |-- metadata.cpython-310.pyc
|   |       |   |   |   |   |-- reasoning.cpython-310.pyc
|   |       |   |   |   |   |-- reasoning_effort.cpython-310.pyc
|   |       |   |   |   |   |-- response_format_json_object.cpython-310.pyc
|   |       |   |   |   |   |-- response_format_json_schema.cpython-310.pyc
|   |       |   |   |   |   |-- response_format_text.cpython-310.pyc
|   |       |   |   |   |   `-- responses_model.cpython-310.pyc
|   |       |   |   |   |-- chat_model.py
|   |       |   |   |   |-- comparison_filter.py
|   |       |   |   |   |-- compound_filter.py
|   |       |   |   |   |-- function_definition.py
|   |       |   |   |   |-- function_parameters.py
|   |       |   |   |   |-- metadata.py
|   |       |   |   |   |-- reasoning.py
|   |       |   |   |   |-- reasoning_effort.py
|   |       |   |   |   |-- response_format_json_object.py
|   |       |   |   |   |-- response_format_json_schema.py
|   |       |   |   |   |-- response_format_text.py
|   |       |   |   |   `-- responses_model.py
|   |       |   |   |-- static_file_chunking_strategy.py
|   |       |   |   |-- static_file_chunking_strategy_object.py
|   |       |   |   |-- static_file_chunking_strategy_object_param.py
|   |       |   |   |-- static_file_chunking_strategy_param.py
|   |       |   |   |-- upload.py
|   |       |   |   |-- upload_complete_params.py
|   |       |   |   |-- upload_create_params.py
|   |       |   |   |-- uploads
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- part_create_params.cpython-310.pyc
|   |       |   |   |   |   `-- upload_part.cpython-310.pyc
|   |       |   |   |   |-- part_create_params.py
|   |       |   |   |   `-- upload_part.py
|   |       |   |   |-- vector_store.py
|   |       |   |   |-- vector_store_create_params.py
|   |       |   |   |-- vector_store_deleted.py
|   |       |   |   |-- vector_store_list_params.py
|   |       |   |   |-- vector_store_search_params.py
|   |       |   |   |-- vector_store_search_response.py
|   |       |   |   |-- vector_store_update_params.py
|   |       |   |   |-- vector_stores
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- file_batch_create_params.cpython-310.pyc
|   |       |   |   |   |   |-- file_batch_list_files_params.cpython-310.pyc
|   |       |   |   |   |   |-- file_content_response.cpython-310.pyc
|   |       |   |   |   |   |-- file_create_params.cpython-310.pyc
|   |       |   |   |   |   |-- file_list_params.cpython-310.pyc
|   |       |   |   |   |   |-- file_update_params.cpython-310.pyc
|   |       |   |   |   |   |-- vector_store_file.cpython-310.pyc
|   |       |   |   |   |   |-- vector_store_file_batch.cpython-310.pyc
|   |       |   |   |   |   `-- vector_store_file_deleted.cpython-310.pyc
|   |       |   |   |   |-- file_batch_create_params.py
|   |       |   |   |   |-- file_batch_list_files_params.py
|   |       |   |   |   |-- file_content_response.py
|   |       |   |   |   |-- file_create_params.py
|   |       |   |   |   |-- file_list_params.py
|   |       |   |   |   |-- file_update_params.py
|   |       |   |   |   |-- vector_store_file.py
|   |       |   |   |   |-- vector_store_file_batch.py
|   |       |   |   |   `-- vector_store_file_deleted.py
|   |       |   |   |-- webhooks
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- batch_cancelled_webhook_event.cpython-310.pyc
|   |       |   |   |   |   |-- batch_completed_webhook_event.cpython-310.pyc
|   |       |   |   |   |   |-- batch_expired_webhook_event.cpython-310.pyc
|   |       |   |   |   |   |-- batch_failed_webhook_event.cpython-310.pyc
|   |       |   |   |   |   |-- eval_run_canceled_webhook_event.cpython-310.pyc
|   |       |   |   |   |   |-- eval_run_failed_webhook_event.cpython-310.pyc
|   |       |   |   |   |   |-- eval_run_succeeded_webhook_event.cpython-310.pyc
|   |       |   |   |   |   |-- fine_tuning_job_cancelled_webhook_event.cpython-310.pyc
|   |       |   |   |   |   |-- fine_tuning_job_failed_webhook_event.cpython-310.pyc
|   |       |   |   |   |   |-- fine_tuning_job_succeeded_webhook_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_cancelled_webhook_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_completed_webhook_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_failed_webhook_event.cpython-310.pyc
|   |       |   |   |   |   |-- response_incomplete_webhook_event.cpython-310.pyc
|   |       |   |   |   |   `-- unwrap_webhook_event.cpython-310.pyc
|   |       |   |   |   |-- batch_cancelled_webhook_event.py
|   |       |   |   |   |-- batch_completed_webhook_event.py
|   |       |   |   |   |-- batch_expired_webhook_event.py
|   |       |   |   |   |-- batch_failed_webhook_event.py
|   |       |   |   |   |-- eval_run_canceled_webhook_event.py
|   |       |   |   |   |-- eval_run_failed_webhook_event.py
|   |       |   |   |   |-- eval_run_succeeded_webhook_event.py
|   |       |   |   |   |-- fine_tuning_job_cancelled_webhook_event.py
|   |       |   |   |   |-- fine_tuning_job_failed_webhook_event.py
|   |       |   |   |   |-- fine_tuning_job_succeeded_webhook_event.py
|   |       |   |   |   |-- response_cancelled_webhook_event.py
|   |       |   |   |   |-- response_completed_webhook_event.py
|   |       |   |   |   |-- response_failed_webhook_event.py
|   |       |   |   |   |-- response_incomplete_webhook_event.py
|   |       |   |   |   `-- unwrap_webhook_event.py
|   |       |   |   `-- websocket_connection_options.py
|   |       |   `-- version.py
|   |       |-- openai-1.93.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- REQUESTED
|   |       |   |-- WHEEL
|   |       |   |-- entry_points.txt
|   |       |   `-- licenses
|   |       |       `-- LICENSE
|   |       |-- pip
|   |       |   |-- __init__.py
|   |       |   |-- __main__.py
|   |       |   |-- __pip-runner__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- __main__.cpython-310.pyc
|   |       |   |   `-- __pip-runner__.cpython-310.pyc
|   |       |   |-- _internal
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- build_env.cpython-310.pyc
|   |       |   |   |   |-- cache.cpython-310.pyc
|   |       |   |   |   |-- configuration.cpython-310.pyc
|   |       |   |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |   |-- main.cpython-310.pyc
|   |       |   |   |   |-- pyproject.cpython-310.pyc
|   |       |   |   |   |-- self_outdated_check.cpython-310.pyc
|   |       |   |   |   `-- wheel_builder.cpython-310.pyc
|   |       |   |   |-- build_env.py
|   |       |   |   |-- cache.py
|   |       |   |   |-- cli
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- autocompletion.cpython-310.pyc
|   |       |   |   |   |   |-- base_command.cpython-310.pyc
|   |       |   |   |   |   |-- cmdoptions.cpython-310.pyc
|   |       |   |   |   |   |-- command_context.cpython-310.pyc
|   |       |   |   |   |   |-- index_command.cpython-310.pyc
|   |       |   |   |   |   |-- main.cpython-310.pyc
|   |       |   |   |   |   |-- main_parser.cpython-310.pyc
|   |       |   |   |   |   |-- parser.cpython-310.pyc
|   |       |   |   |   |   |-- progress_bars.cpython-310.pyc
|   |       |   |   |   |   |-- req_command.cpython-310.pyc
|   |       |   |   |   |   |-- spinners.cpython-310.pyc
|   |       |   |   |   |   `-- status_codes.cpython-310.pyc
|   |       |   |   |   |-- autocompletion.py
|   |       |   |   |   |-- base_command.py
|   |       |   |   |   |-- cmdoptions.py
|   |       |   |   |   |-- command_context.py
|   |       |   |   |   |-- index_command.py
|   |       |   |   |   |-- main.py
|   |       |   |   |   |-- main_parser.py
|   |       |   |   |   |-- parser.py
|   |       |   |   |   |-- progress_bars.py
|   |       |   |   |   |-- req_command.py
|   |       |   |   |   |-- spinners.py
|   |       |   |   |   `-- status_codes.py
|   |       |   |   |-- commands
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- cache.cpython-310.pyc
|   |       |   |   |   |   |-- check.cpython-310.pyc
|   |       |   |   |   |   |-- completion.cpython-310.pyc
|   |       |   |   |   |   |-- configuration.cpython-310.pyc
|   |       |   |   |   |   |-- debug.cpython-310.pyc
|   |       |   |   |   |   |-- download.cpython-310.pyc
|   |       |   |   |   |   |-- freeze.cpython-310.pyc
|   |       |   |   |   |   |-- hash.cpython-310.pyc
|   |       |   |   |   |   |-- help.cpython-310.pyc
|   |       |   |   |   |   |-- index.cpython-310.pyc
|   |       |   |   |   |   |-- inspect.cpython-310.pyc
|   |       |   |   |   |   |-- install.cpython-310.pyc
|   |       |   |   |   |   |-- list.cpython-310.pyc
|   |       |   |   |   |   |-- lock.cpython-310.pyc
|   |       |   |   |   |   |-- search.cpython-310.pyc
|   |       |   |   |   |   |-- show.cpython-310.pyc
|   |       |   |   |   |   |-- uninstall.cpython-310.pyc
|   |       |   |   |   |   `-- wheel.cpython-310.pyc
|   |       |   |   |   |-- cache.py
|   |       |   |   |   |-- check.py
|   |       |   |   |   |-- completion.py
|   |       |   |   |   |-- configuration.py
|   |       |   |   |   |-- debug.py
|   |       |   |   |   |-- download.py
|   |       |   |   |   |-- freeze.py
|   |       |   |   |   |-- hash.py
|   |       |   |   |   |-- help.py
|   |       |   |   |   |-- index.py
|   |       |   |   |   |-- inspect.py
|   |       |   |   |   |-- install.py
|   |       |   |   |   |-- list.py
|   |       |   |   |   |-- lock.py
|   |       |   |   |   |-- search.py
|   |       |   |   |   |-- show.py
|   |       |   |   |   |-- uninstall.py
|   |       |   |   |   `-- wheel.py
|   |       |   |   |-- configuration.py
|   |       |   |   |-- distributions
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- base.cpython-310.pyc
|   |       |   |   |   |   |-- installed.cpython-310.pyc
|   |       |   |   |   |   |-- sdist.cpython-310.pyc
|   |       |   |   |   |   `-- wheel.cpython-310.pyc
|   |       |   |   |   |-- base.py
|   |       |   |   |   |-- installed.py
|   |       |   |   |   |-- sdist.py
|   |       |   |   |   `-- wheel.py
|   |       |   |   |-- exceptions.py
|   |       |   |   |-- index
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- collector.cpython-310.pyc
|   |       |   |   |   |   |-- package_finder.cpython-310.pyc
|   |       |   |   |   |   `-- sources.cpython-310.pyc
|   |       |   |   |   |-- collector.py
|   |       |   |   |   |-- package_finder.py
|   |       |   |   |   `-- sources.py
|   |       |   |   |-- locations
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- _distutils.cpython-310.pyc
|   |       |   |   |   |   |-- _sysconfig.cpython-310.pyc
|   |       |   |   |   |   `-- base.cpython-310.pyc
|   |       |   |   |   |-- _distutils.py
|   |       |   |   |   |-- _sysconfig.py
|   |       |   |   |   `-- base.py
|   |       |   |   |-- main.py
|   |       |   |   |-- metadata
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- _json.cpython-310.pyc
|   |       |   |   |   |   |-- base.cpython-310.pyc
|   |       |   |   |   |   `-- pkg_resources.cpython-310.pyc
|   |       |   |   |   |-- _json.py
|   |       |   |   |   |-- base.py
|   |       |   |   |   |-- importlib
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- _compat.cpython-310.pyc
|   |       |   |   |   |   |   |-- _dists.cpython-310.pyc
|   |       |   |   |   |   |   `-- _envs.cpython-310.pyc
|   |       |   |   |   |   |-- _compat.py
|   |       |   |   |   |   |-- _dists.py
|   |       |   |   |   |   `-- _envs.py
|   |       |   |   |   `-- pkg_resources.py
|   |       |   |   |-- models
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- candidate.cpython-310.pyc
|   |       |   |   |   |   |-- direct_url.cpython-310.pyc
|   |       |   |   |   |   |-- format_control.cpython-310.pyc
|   |       |   |   |   |   |-- index.cpython-310.pyc
|   |       |   |   |   |   |-- installation_report.cpython-310.pyc
|   |       |   |   |   |   |-- link.cpython-310.pyc
|   |       |   |   |   |   |-- pylock.cpython-310.pyc
|   |       |   |   |   |   |-- scheme.cpython-310.pyc
|   |       |   |   |   |   |-- search_scope.cpython-310.pyc
|   |       |   |   |   |   |-- selection_prefs.cpython-310.pyc
|   |       |   |   |   |   |-- target_python.cpython-310.pyc
|   |       |   |   |   |   `-- wheel.cpython-310.pyc
|   |       |   |   |   |-- candidate.py
|   |       |   |   |   |-- direct_url.py
|   |       |   |   |   |-- format_control.py
|   |       |   |   |   |-- index.py
|   |       |   |   |   |-- installation_report.py
|   |       |   |   |   |-- link.py
|   |       |   |   |   |-- pylock.py
|   |       |   |   |   |-- scheme.py
|   |       |   |   |   |-- search_scope.py
|   |       |   |   |   |-- selection_prefs.py
|   |       |   |   |   |-- target_python.py
|   |       |   |   |   `-- wheel.py
|   |       |   |   |-- network
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- auth.cpython-310.pyc
|   |       |   |   |   |   |-- cache.cpython-310.pyc
|   |       |   |   |   |   |-- download.cpython-310.pyc
|   |       |   |   |   |   |-- lazy_wheel.cpython-310.pyc
|   |       |   |   |   |   |-- session.cpython-310.pyc
|   |       |   |   |   |   |-- utils.cpython-310.pyc
|   |       |   |   |   |   `-- xmlrpc.cpython-310.pyc
|   |       |   |   |   |-- auth.py
|   |       |   |   |   |-- cache.py
|   |       |   |   |   |-- download.py
|   |       |   |   |   |-- lazy_wheel.py
|   |       |   |   |   |-- session.py
|   |       |   |   |   |-- utils.py
|   |       |   |   |   `-- xmlrpc.py
|   |       |   |   |-- operations
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- check.cpython-310.pyc
|   |       |   |   |   |   |-- freeze.cpython-310.pyc
|   |       |   |   |   |   `-- prepare.cpython-310.pyc
|   |       |   |   |   |-- build
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- build_tracker.cpython-310.pyc
|   |       |   |   |   |   |   |-- metadata.cpython-310.pyc
|   |       |   |   |   |   |   |-- metadata_editable.cpython-310.pyc
|   |       |   |   |   |   |   |-- metadata_legacy.cpython-310.pyc
|   |       |   |   |   |   |   |-- wheel.cpython-310.pyc
|   |       |   |   |   |   |   |-- wheel_editable.cpython-310.pyc
|   |       |   |   |   |   |   `-- wheel_legacy.cpython-310.pyc
|   |       |   |   |   |   |-- build_tracker.py
|   |       |   |   |   |   |-- metadata.py
|   |       |   |   |   |   |-- metadata_editable.py
|   |       |   |   |   |   |-- metadata_legacy.py
|   |       |   |   |   |   |-- wheel.py
|   |       |   |   |   |   |-- wheel_editable.py
|   |       |   |   |   |   `-- wheel_legacy.py
|   |       |   |   |   |-- check.py
|   |       |   |   |   |-- freeze.py
|   |       |   |   |   |-- install
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- editable_legacy.cpython-310.pyc
|   |       |   |   |   |   |   `-- wheel.cpython-310.pyc
|   |       |   |   |   |   |-- editable_legacy.py
|   |       |   |   |   |   `-- wheel.py
|   |       |   |   |   `-- prepare.py
|   |       |   |   |-- pyproject.py
|   |       |   |   |-- req
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- constructors.cpython-310.pyc
|   |       |   |   |   |   |-- req_dependency_group.cpython-310.pyc
|   |       |   |   |   |   |-- req_file.cpython-310.pyc
|   |       |   |   |   |   |-- req_install.cpython-310.pyc
|   |       |   |   |   |   |-- req_set.cpython-310.pyc
|   |       |   |   |   |   `-- req_uninstall.cpython-310.pyc
|   |       |   |   |   |-- constructors.py
|   |       |   |   |   |-- req_dependency_group.py
|   |       |   |   |   |-- req_file.py
|   |       |   |   |   |-- req_install.py
|   |       |   |   |   |-- req_set.py
|   |       |   |   |   `-- req_uninstall.py
|   |       |   |   |-- resolution
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   `-- base.cpython-310.pyc
|   |       |   |   |   |-- base.py
|   |       |   |   |   |-- legacy
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   `-- resolver.cpython-310.pyc
|   |       |   |   |   |   `-- resolver.py
|   |       |   |   |   `-- resolvelib
|   |       |   |   |       |-- __init__.py
|   |       |   |   |       |-- __pycache__
|   |       |   |   |       |   |-- __init__.cpython-310.pyc
|   |       |   |   |       |   |-- base.cpython-310.pyc
|   |       |   |   |       |   |-- candidates.cpython-310.pyc
|   |       |   |   |       |   |-- factory.cpython-310.pyc
|   |       |   |   |       |   |-- found_candidates.cpython-310.pyc
|   |       |   |   |       |   |-- provider.cpython-310.pyc
|   |       |   |   |       |   |-- reporter.cpython-310.pyc
|   |       |   |   |       |   |-- requirements.cpython-310.pyc
|   |       |   |   |       |   `-- resolver.cpython-310.pyc
|   |       |   |   |       |-- base.py
|   |       |   |   |       |-- candidates.py
|   |       |   |   |       |-- factory.py
|   |       |   |   |       |-- found_candidates.py
|   |       |   |   |       |-- provider.py
|   |       |   |   |       |-- reporter.py
|   |       |   |   |       |-- requirements.py
|   |       |   |   |       `-- resolver.py
|   |       |   |   |-- self_outdated_check.py
|   |       |   |   |-- utils
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- _jaraco_text.cpython-310.pyc
|   |       |   |   |   |   |-- _log.cpython-310.pyc
|   |       |   |   |   |   |-- appdirs.cpython-310.pyc
|   |       |   |   |   |   |-- compat.cpython-310.pyc
|   |       |   |   |   |   |-- compatibility_tags.cpython-310.pyc
|   |       |   |   |   |   |-- datetime.cpython-310.pyc
|   |       |   |   |   |   |-- deprecation.cpython-310.pyc
|   |       |   |   |   |   |-- direct_url_helpers.cpython-310.pyc
|   |       |   |   |   |   |-- egg_link.cpython-310.pyc
|   |       |   |   |   |   |-- entrypoints.cpython-310.pyc
|   |       |   |   |   |   |-- filesystem.cpython-310.pyc
|   |       |   |   |   |   |-- filetypes.cpython-310.pyc
|   |       |   |   |   |   |-- glibc.cpython-310.pyc
|   |       |   |   |   |   |-- hashes.cpython-310.pyc
|   |       |   |   |   |   |-- logging.cpython-310.pyc
|   |       |   |   |   |   |-- misc.cpython-310.pyc
|   |       |   |   |   |   |-- packaging.cpython-310.pyc
|   |       |   |   |   |   |-- retry.cpython-310.pyc
|   |       |   |   |   |   |-- setuptools_build.cpython-310.pyc
|   |       |   |   |   |   |-- subprocess.cpython-310.pyc
|   |       |   |   |   |   |-- temp_dir.cpython-310.pyc
|   |       |   |   |   |   |-- unpacking.cpython-310.pyc
|   |       |   |   |   |   |-- urls.cpython-310.pyc
|   |       |   |   |   |   |-- virtualenv.cpython-310.pyc
|   |       |   |   |   |   `-- wheel.cpython-310.pyc
|   |       |   |   |   |-- _jaraco_text.py
|   |       |   |   |   |-- _log.py
|   |       |   |   |   |-- appdirs.py
|   |       |   |   |   |-- compat.py
|   |       |   |   |   |-- compatibility_tags.py
|   |       |   |   |   |-- datetime.py
|   |       |   |   |   |-- deprecation.py
|   |       |   |   |   |-- direct_url_helpers.py
|   |       |   |   |   |-- egg_link.py
|   |       |   |   |   |-- entrypoints.py
|   |       |   |   |   |-- filesystem.py
|   |       |   |   |   |-- filetypes.py
|   |       |   |   |   |-- glibc.py
|   |       |   |   |   |-- hashes.py
|   |       |   |   |   |-- logging.py
|   |       |   |   |   |-- misc.py
|   |       |   |   |   |-- packaging.py
|   |       |   |   |   |-- retry.py
|   |       |   |   |   |-- setuptools_build.py
|   |       |   |   |   |-- subprocess.py
|   |       |   |   |   |-- temp_dir.py
|   |       |   |   |   |-- unpacking.py
|   |       |   |   |   |-- urls.py
|   |       |   |   |   |-- virtualenv.py
|   |       |   |   |   `-- wheel.py
|   |       |   |   |-- vcs
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- bazaar.cpython-310.pyc
|   |       |   |   |   |   |-- git.cpython-310.pyc
|   |       |   |   |   |   |-- mercurial.cpython-310.pyc
|   |       |   |   |   |   |-- subversion.cpython-310.pyc
|   |       |   |   |   |   `-- versioncontrol.cpython-310.pyc
|   |       |   |   |   |-- bazaar.py
|   |       |   |   |   |-- git.py
|   |       |   |   |   |-- mercurial.py
|   |       |   |   |   |-- subversion.py
|   |       |   |   |   `-- versioncontrol.py
|   |       |   |   `-- wheel_builder.py
|   |       |   |-- _vendor
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   `-- typing_extensions.cpython-310.pyc
|   |       |   |   |-- cachecontrol
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- _cmd.cpython-310.pyc
|   |       |   |   |   |   |-- adapter.cpython-310.pyc
|   |       |   |   |   |   |-- cache.cpython-310.pyc
|   |       |   |   |   |   |-- controller.cpython-310.pyc
|   |       |   |   |   |   |-- filewrapper.cpython-310.pyc
|   |       |   |   |   |   |-- heuristics.cpython-310.pyc
|   |       |   |   |   |   |-- serialize.cpython-310.pyc
|   |       |   |   |   |   `-- wrapper.cpython-310.pyc
|   |       |   |   |   |-- _cmd.py
|   |       |   |   |   |-- adapter.py
|   |       |   |   |   |-- cache.py
|   |       |   |   |   |-- caches
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- file_cache.cpython-310.pyc
|   |       |   |   |   |   |   `-- redis_cache.cpython-310.pyc
|   |       |   |   |   |   |-- file_cache.py
|   |       |   |   |   |   `-- redis_cache.py
|   |       |   |   |   |-- controller.py
|   |       |   |   |   |-- filewrapper.py
|   |       |   |   |   |-- heuristics.py
|   |       |   |   |   |-- py.typed
|   |       |   |   |   |-- serialize.py
|   |       |   |   |   `-- wrapper.py
|   |       |   |   |-- certifi
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __main__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- __main__.cpython-310.pyc
|   |       |   |   |   |   `-- core.cpython-310.pyc
|   |       |   |   |   |-- cacert.pem
|   |       |   |   |   |-- core.py
|   |       |   |   |   `-- py.typed
|   |       |   |   |-- dependency_groups
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __main__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- __main__.cpython-310.pyc
|   |       |   |   |   |   |-- _implementation.cpython-310.pyc
|   |       |   |   |   |   |-- _lint_dependency_groups.cpython-310.pyc
|   |       |   |   |   |   |-- _pip_wrapper.cpython-310.pyc
|   |       |   |   |   |   `-- _toml_compat.cpython-310.pyc
|   |       |   |   |   |-- _implementation.py
|   |       |   |   |   |-- _lint_dependency_groups.py
|   |       |   |   |   |-- _pip_wrapper.py
|   |       |   |   |   |-- _toml_compat.py
|   |       |   |   |   `-- py.typed
|   |       |   |   |-- distlib
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- compat.cpython-310.pyc
|   |       |   |   |   |   |-- database.cpython-310.pyc
|   |       |   |   |   |   |-- index.cpython-310.pyc
|   |       |   |   |   |   |-- locators.cpython-310.pyc
|   |       |   |   |   |   |-- manifest.cpython-310.pyc
|   |       |   |   |   |   |-- markers.cpython-310.pyc
|   |       |   |   |   |   |-- metadata.cpython-310.pyc
|   |       |   |   |   |   |-- resources.cpython-310.pyc
|   |       |   |   |   |   |-- scripts.cpython-310.pyc
|   |       |   |   |   |   |-- util.cpython-310.pyc
|   |       |   |   |   |   |-- version.cpython-310.pyc
|   |       |   |   |   |   `-- wheel.cpython-310.pyc
|   |       |   |   |   |-- compat.py
|   |       |   |   |   |-- database.py
|   |       |   |   |   |-- index.py
|   |       |   |   |   |-- locators.py
|   |       |   |   |   |-- manifest.py
|   |       |   |   |   |-- markers.py
|   |       |   |   |   |-- metadata.py
|   |       |   |   |   |-- resources.py
|   |       |   |   |   |-- scripts.py
|   |       |   |   |   |-- t32.exe
|   |       |   |   |   |-- t64-arm.exe
|   |       |   |   |   |-- t64.exe
|   |       |   |   |   |-- util.py
|   |       |   |   |   |-- version.py
|   |       |   |   |   |-- w32.exe
|   |       |   |   |   |-- w64-arm.exe
|   |       |   |   |   |-- w64.exe
|   |       |   |   |   `-- wheel.py
|   |       |   |   |-- distro
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __main__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- __main__.cpython-310.pyc
|   |       |   |   |   |   `-- distro.cpython-310.pyc
|   |       |   |   |   |-- distro.py
|   |       |   |   |   `-- py.typed
|   |       |   |   |-- idna
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- codec.cpython-310.pyc
|   |       |   |   |   |   |-- compat.cpython-310.pyc
|   |       |   |   |   |   |-- core.cpython-310.pyc
|   |       |   |   |   |   |-- idnadata.cpython-310.pyc
|   |       |   |   |   |   |-- intranges.cpython-310.pyc
|   |       |   |   |   |   |-- package_data.cpython-310.pyc
|   |       |   |   |   |   `-- uts46data.cpython-310.pyc
|   |       |   |   |   |-- codec.py
|   |       |   |   |   |-- compat.py
|   |       |   |   |   |-- core.py
|   |       |   |   |   |-- idnadata.py
|   |       |   |   |   |-- intranges.py
|   |       |   |   |   |-- package_data.py
|   |       |   |   |   |-- py.typed
|   |       |   |   |   `-- uts46data.py
|   |       |   |   |-- msgpack
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |   |   |-- ext.cpython-310.pyc
|   |       |   |   |   |   `-- fallback.cpython-310.pyc
|   |       |   |   |   |-- exceptions.py
|   |       |   |   |   |-- ext.py
|   |       |   |   |   `-- fallback.py
|   |       |   |   |-- packaging
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- _elffile.cpython-310.pyc
|   |       |   |   |   |   |-- _manylinux.cpython-310.pyc
|   |       |   |   |   |   |-- _musllinux.cpython-310.pyc
|   |       |   |   |   |   |-- _parser.cpython-310.pyc
|   |       |   |   |   |   |-- _structures.cpython-310.pyc
|   |       |   |   |   |   |-- _tokenizer.cpython-310.pyc
|   |       |   |   |   |   |-- markers.cpython-310.pyc
|   |       |   |   |   |   |-- metadata.cpython-310.pyc
|   |       |   |   |   |   |-- requirements.cpython-310.pyc
|   |       |   |   |   |   |-- specifiers.cpython-310.pyc
|   |       |   |   |   |   |-- tags.cpython-310.pyc
|   |       |   |   |   |   |-- utils.cpython-310.pyc
|   |       |   |   |   |   `-- version.cpython-310.pyc
|   |       |   |   |   |-- _elffile.py
|   |       |   |   |   |-- _manylinux.py
|   |       |   |   |   |-- _musllinux.py
|   |       |   |   |   |-- _parser.py
|   |       |   |   |   |-- _structures.py
|   |       |   |   |   |-- _tokenizer.py
|   |       |   |   |   |-- licenses
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   `-- _spdx.cpython-310.pyc
|   |       |   |   |   |   `-- _spdx.py
|   |       |   |   |   |-- markers.py
|   |       |   |   |   |-- metadata.py
|   |       |   |   |   |-- py.typed
|   |       |   |   |   |-- requirements.py
|   |       |   |   |   |-- specifiers.py
|   |       |   |   |   |-- tags.py
|   |       |   |   |   |-- utils.py
|   |       |   |   |   `-- version.py
|   |       |   |   |-- pkg_resources
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   `-- __pycache__
|   |       |   |   |       `-- __init__.cpython-310.pyc
|   |       |   |   |-- platformdirs
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __main__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- __main__.cpython-310.pyc
|   |       |   |   |   |   |-- android.cpython-310.pyc
|   |       |   |   |   |   |-- api.cpython-310.pyc
|   |       |   |   |   |   |-- macos.cpython-310.pyc
|   |       |   |   |   |   |-- unix.cpython-310.pyc
|   |       |   |   |   |   |-- version.cpython-310.pyc
|   |       |   |   |   |   `-- windows.cpython-310.pyc
|   |       |   |   |   |-- android.py
|   |       |   |   |   |-- api.py
|   |       |   |   |   |-- macos.py
|   |       |   |   |   |-- py.typed
|   |       |   |   |   |-- unix.py
|   |       |   |   |   |-- version.py
|   |       |   |   |   `-- windows.py
|   |       |   |   |-- pygments
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __main__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- __main__.cpython-310.pyc
|   |       |   |   |   |   |-- console.cpython-310.pyc
|   |       |   |   |   |   |-- filter.cpython-310.pyc
|   |       |   |   |   |   |-- formatter.cpython-310.pyc
|   |       |   |   |   |   |-- lexer.cpython-310.pyc
|   |       |   |   |   |   |-- modeline.cpython-310.pyc
|   |       |   |   |   |   |-- plugin.cpython-310.pyc
|   |       |   |   |   |   |-- regexopt.cpython-310.pyc
|   |       |   |   |   |   |-- scanner.cpython-310.pyc
|   |       |   |   |   |   |-- sphinxext.cpython-310.pyc
|   |       |   |   |   |   |-- style.cpython-310.pyc
|   |       |   |   |   |   |-- token.cpython-310.pyc
|   |       |   |   |   |   |-- unistring.cpython-310.pyc
|   |       |   |   |   |   `-- util.cpython-310.pyc
|   |       |   |   |   |-- console.py
|   |       |   |   |   |-- filter.py
|   |       |   |   |   |-- filters
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   `-- __pycache__
|   |       |   |   |   |       `-- __init__.cpython-310.pyc
|   |       |   |   |   |-- formatter.py
|   |       |   |   |   |-- formatters
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   `-- _mapping.cpython-310.pyc
|   |       |   |   |   |   `-- _mapping.py
|   |       |   |   |   |-- lexer.py
|   |       |   |   |   |-- lexers
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- _mapping.cpython-310.pyc
|   |       |   |   |   |   |   `-- python.cpython-310.pyc
|   |       |   |   |   |   |-- _mapping.py
|   |       |   |   |   |   `-- python.py
|   |       |   |   |   |-- modeline.py
|   |       |   |   |   |-- plugin.py
|   |       |   |   |   |-- regexopt.py
|   |       |   |   |   |-- scanner.py
|   |       |   |   |   |-- sphinxext.py
|   |       |   |   |   |-- style.py
|   |       |   |   |   |-- styles
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   `-- _mapping.cpython-310.pyc
|   |       |   |   |   |   `-- _mapping.py
|   |       |   |   |   |-- token.py
|   |       |   |   |   |-- unistring.py
|   |       |   |   |   `-- util.py
|   |       |   |   |-- pyproject_hooks
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   `-- _impl.cpython-310.pyc
|   |       |   |   |   |-- _impl.py
|   |       |   |   |   |-- _in_process
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   `-- _in_process.cpython-310.pyc
|   |       |   |   |   |   `-- _in_process.py
|   |       |   |   |   `-- py.typed
|   |       |   |   |-- requests
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- __version__.cpython-310.pyc
|   |       |   |   |   |   |-- _internal_utils.cpython-310.pyc
|   |       |   |   |   |   |-- adapters.cpython-310.pyc
|   |       |   |   |   |   |-- api.cpython-310.pyc
|   |       |   |   |   |   |-- auth.cpython-310.pyc
|   |       |   |   |   |   |-- certs.cpython-310.pyc
|   |       |   |   |   |   |-- compat.cpython-310.pyc
|   |       |   |   |   |   |-- cookies.cpython-310.pyc
|   |       |   |   |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |   |   |-- help.cpython-310.pyc
|   |       |   |   |   |   |-- hooks.cpython-310.pyc
|   |       |   |   |   |   |-- models.cpython-310.pyc
|   |       |   |   |   |   |-- packages.cpython-310.pyc
|   |       |   |   |   |   |-- sessions.cpython-310.pyc
|   |       |   |   |   |   |-- status_codes.cpython-310.pyc
|   |       |   |   |   |   |-- structures.cpython-310.pyc
|   |       |   |   |   |   `-- utils.cpython-310.pyc
|   |       |   |   |   |-- __version__.py
|   |       |   |   |   |-- _internal_utils.py
|   |       |   |   |   |-- adapters.py
|   |       |   |   |   |-- api.py
|   |       |   |   |   |-- auth.py
|   |       |   |   |   |-- certs.py
|   |       |   |   |   |-- compat.py
|   |       |   |   |   |-- cookies.py
|   |       |   |   |   |-- exceptions.py
|   |       |   |   |   |-- help.py
|   |       |   |   |   |-- hooks.py
|   |       |   |   |   |-- models.py
|   |       |   |   |   |-- packages.py
|   |       |   |   |   |-- sessions.py
|   |       |   |   |   |-- status_codes.py
|   |       |   |   |   |-- structures.py
|   |       |   |   |   `-- utils.py
|   |       |   |   |-- resolvelib
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- providers.cpython-310.pyc
|   |       |   |   |   |   |-- reporters.cpython-310.pyc
|   |       |   |   |   |   `-- structs.cpython-310.pyc
|   |       |   |   |   |-- providers.py
|   |       |   |   |   |-- py.typed
|   |       |   |   |   |-- reporters.py
|   |       |   |   |   |-- resolvers
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- abstract.cpython-310.pyc
|   |       |   |   |   |   |   |-- criterion.cpython-310.pyc
|   |       |   |   |   |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |   |   |   `-- resolution.cpython-310.pyc
|   |       |   |   |   |   |-- abstract.py
|   |       |   |   |   |   |-- criterion.py
|   |       |   |   |   |   |-- exceptions.py
|   |       |   |   |   |   `-- resolution.py
|   |       |   |   |   `-- structs.py
|   |       |   |   |-- rich
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __main__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- __main__.cpython-310.pyc
|   |       |   |   |   |   |-- _cell_widths.cpython-310.pyc
|   |       |   |   |   |   |-- _emoji_codes.cpython-310.pyc
|   |       |   |   |   |   |-- _emoji_replace.cpython-310.pyc
|   |       |   |   |   |   |-- _export_format.cpython-310.pyc
|   |       |   |   |   |   |-- _extension.cpython-310.pyc
|   |       |   |   |   |   |-- _fileno.cpython-310.pyc
|   |       |   |   |   |   |-- _inspect.cpython-310.pyc
|   |       |   |   |   |   |-- _log_render.cpython-310.pyc
|   |       |   |   |   |   |-- _loop.cpython-310.pyc
|   |       |   |   |   |   |-- _null_file.cpython-310.pyc
|   |       |   |   |   |   |-- _palettes.cpython-310.pyc
|   |       |   |   |   |   |-- _pick.cpython-310.pyc
|   |       |   |   |   |   |-- _ratio.cpython-310.pyc
|   |       |   |   |   |   |-- _spinners.cpython-310.pyc
|   |       |   |   |   |   |-- _stack.cpython-310.pyc
|   |       |   |   |   |   |-- _timer.cpython-310.pyc
|   |       |   |   |   |   |-- _win32_console.cpython-310.pyc
|   |       |   |   |   |   |-- _windows.cpython-310.pyc
|   |       |   |   |   |   |-- _windows_renderer.cpython-310.pyc
|   |       |   |   |   |   |-- _wrap.cpython-310.pyc
|   |       |   |   |   |   |-- abc.cpython-310.pyc
|   |       |   |   |   |   |-- align.cpython-310.pyc
|   |       |   |   |   |   |-- ansi.cpython-310.pyc
|   |       |   |   |   |   |-- bar.cpython-310.pyc
|   |       |   |   |   |   |-- box.cpython-310.pyc
|   |       |   |   |   |   |-- cells.cpython-310.pyc
|   |       |   |   |   |   |-- color.cpython-310.pyc
|   |       |   |   |   |   |-- color_triplet.cpython-310.pyc
|   |       |   |   |   |   |-- columns.cpython-310.pyc
|   |       |   |   |   |   |-- console.cpython-310.pyc
|   |       |   |   |   |   |-- constrain.cpython-310.pyc
|   |       |   |   |   |   |-- containers.cpython-310.pyc
|   |       |   |   |   |   |-- control.cpython-310.pyc
|   |       |   |   |   |   |-- default_styles.cpython-310.pyc
|   |       |   |   |   |   |-- diagnose.cpython-310.pyc
|   |       |   |   |   |   |-- emoji.cpython-310.pyc
|   |       |   |   |   |   |-- errors.cpython-310.pyc
|   |       |   |   |   |   |-- file_proxy.cpython-310.pyc
|   |       |   |   |   |   |-- filesize.cpython-310.pyc
|   |       |   |   |   |   |-- highlighter.cpython-310.pyc
|   |       |   |   |   |   |-- json.cpython-310.pyc
|   |       |   |   |   |   |-- jupyter.cpython-310.pyc
|   |       |   |   |   |   |-- layout.cpython-310.pyc
|   |       |   |   |   |   |-- live.cpython-310.pyc
|   |       |   |   |   |   |-- live_render.cpython-310.pyc
|   |       |   |   |   |   |-- logging.cpython-310.pyc
|   |       |   |   |   |   |-- markup.cpython-310.pyc
|   |       |   |   |   |   |-- measure.cpython-310.pyc
|   |       |   |   |   |   |-- padding.cpython-310.pyc
|   |       |   |   |   |   |-- pager.cpython-310.pyc
|   |       |   |   |   |   |-- palette.cpython-310.pyc
|   |       |   |   |   |   |-- panel.cpython-310.pyc
|   |       |   |   |   |   |-- pretty.cpython-310.pyc
|   |       |   |   |   |   |-- progress.cpython-310.pyc
|   |       |   |   |   |   |-- progress_bar.cpython-310.pyc
|   |       |   |   |   |   |-- prompt.cpython-310.pyc
|   |       |   |   |   |   |-- protocol.cpython-310.pyc
|   |       |   |   |   |   |-- region.cpython-310.pyc
|   |       |   |   |   |   |-- repr.cpython-310.pyc
|   |       |   |   |   |   |-- rule.cpython-310.pyc
|   |       |   |   |   |   |-- scope.cpython-310.pyc
|   |       |   |   |   |   |-- screen.cpython-310.pyc
|   |       |   |   |   |   |-- segment.cpython-310.pyc
|   |       |   |   |   |   |-- spinner.cpython-310.pyc
|   |       |   |   |   |   |-- status.cpython-310.pyc
|   |       |   |   |   |   |-- style.cpython-310.pyc
|   |       |   |   |   |   |-- styled.cpython-310.pyc
|   |       |   |   |   |   |-- syntax.cpython-310.pyc
|   |       |   |   |   |   |-- table.cpython-310.pyc
|   |       |   |   |   |   |-- terminal_theme.cpython-310.pyc
|   |       |   |   |   |   |-- text.cpython-310.pyc
|   |       |   |   |   |   |-- theme.cpython-310.pyc
|   |       |   |   |   |   |-- themes.cpython-310.pyc
|   |       |   |   |   |   |-- traceback.cpython-310.pyc
|   |       |   |   |   |   `-- tree.cpython-310.pyc
|   |       |   |   |   |-- _cell_widths.py
|   |       |   |   |   |-- _emoji_codes.py
|   |       |   |   |   |-- _emoji_replace.py
|   |       |   |   |   |-- _export_format.py
|   |       |   |   |   |-- _extension.py
|   |       |   |   |   |-- _fileno.py
|   |       |   |   |   |-- _inspect.py
|   |       |   |   |   |-- _log_render.py
|   |       |   |   |   |-- _loop.py
|   |       |   |   |   |-- _null_file.py
|   |       |   |   |   |-- _palettes.py
|   |       |   |   |   |-- _pick.py
|   |       |   |   |   |-- _ratio.py
|   |       |   |   |   |-- _spinners.py
|   |       |   |   |   |-- _stack.py
|   |       |   |   |   |-- _timer.py
|   |       |   |   |   |-- _win32_console.py
|   |       |   |   |   |-- _windows.py
|   |       |   |   |   |-- _windows_renderer.py
|   |       |   |   |   |-- _wrap.py
|   |       |   |   |   |-- abc.py
|   |       |   |   |   |-- align.py
|   |       |   |   |   |-- ansi.py
|   |       |   |   |   |-- bar.py
|   |       |   |   |   |-- box.py
|   |       |   |   |   |-- cells.py
|   |       |   |   |   |-- color.py
|   |       |   |   |   |-- color_triplet.py
|   |       |   |   |   |-- columns.py
|   |       |   |   |   |-- console.py
|   |       |   |   |   |-- constrain.py
|   |       |   |   |   |-- containers.py
|   |       |   |   |   |-- control.py
|   |       |   |   |   |-- default_styles.py
|   |       |   |   |   |-- diagnose.py
|   |       |   |   |   |-- emoji.py
|   |       |   |   |   |-- errors.py
|   |       |   |   |   |-- file_proxy.py
|   |       |   |   |   |-- filesize.py
|   |       |   |   |   |-- highlighter.py
|   |       |   |   |   |-- json.py
|   |       |   |   |   |-- jupyter.py
|   |       |   |   |   |-- layout.py
|   |       |   |   |   |-- live.py
|   |       |   |   |   |-- live_render.py
|   |       |   |   |   |-- logging.py
|   |       |   |   |   |-- markup.py
|   |       |   |   |   |-- measure.py
|   |       |   |   |   |-- padding.py
|   |       |   |   |   |-- pager.py
|   |       |   |   |   |-- palette.py
|   |       |   |   |   |-- panel.py
|   |       |   |   |   |-- pretty.py
|   |       |   |   |   |-- progress.py
|   |       |   |   |   |-- progress_bar.py
|   |       |   |   |   |-- prompt.py
|   |       |   |   |   |-- protocol.py
|   |       |   |   |   |-- py.typed
|   |       |   |   |   |-- region.py
|   |       |   |   |   |-- repr.py
|   |       |   |   |   |-- rule.py
|   |       |   |   |   |-- scope.py
|   |       |   |   |   |-- screen.py
|   |       |   |   |   |-- segment.py
|   |       |   |   |   |-- spinner.py
|   |       |   |   |   |-- status.py
|   |       |   |   |   |-- style.py
|   |       |   |   |   |-- styled.py
|   |       |   |   |   |-- syntax.py
|   |       |   |   |   |-- table.py
|   |       |   |   |   |-- terminal_theme.py
|   |       |   |   |   |-- text.py
|   |       |   |   |   |-- theme.py
|   |       |   |   |   |-- themes.py
|   |       |   |   |   |-- traceback.py
|   |       |   |   |   `-- tree.py
|   |       |   |   |-- tomli
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- _parser.cpython-310.pyc
|   |       |   |   |   |   |-- _re.cpython-310.pyc
|   |       |   |   |   |   `-- _types.cpython-310.pyc
|   |       |   |   |   |-- _parser.py
|   |       |   |   |   |-- _re.py
|   |       |   |   |   |-- _types.py
|   |       |   |   |   `-- py.typed
|   |       |   |   |-- tomli_w
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   `-- _writer.cpython-310.pyc
|   |       |   |   |   |-- _writer.py
|   |       |   |   |   `-- py.typed
|   |       |   |   |-- truststore
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- _api.cpython-310.pyc
|   |       |   |   |   |   |-- _macos.cpython-310.pyc
|   |       |   |   |   |   |-- _openssl.cpython-310.pyc
|   |       |   |   |   |   |-- _ssl_constants.cpython-310.pyc
|   |       |   |   |   |   `-- _windows.cpython-310.pyc
|   |       |   |   |   |-- _api.py
|   |       |   |   |   |-- _macos.py
|   |       |   |   |   |-- _openssl.py
|   |       |   |   |   |-- _ssl_constants.py
|   |       |   |   |   |-- _windows.py
|   |       |   |   |   `-- py.typed
|   |       |   |   |-- typing_extensions.py
|   |       |   |   |-- urllib3
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- _collections.cpython-310.pyc
|   |       |   |   |   |   |-- _version.cpython-310.pyc
|   |       |   |   |   |   |-- connection.cpython-310.pyc
|   |       |   |   |   |   |-- connectionpool.cpython-310.pyc
|   |       |   |   |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |   |   |-- fields.cpython-310.pyc
|   |       |   |   |   |   |-- filepost.cpython-310.pyc
|   |       |   |   |   |   |-- poolmanager.cpython-310.pyc
|   |       |   |   |   |   |-- request.cpython-310.pyc
|   |       |   |   |   |   `-- response.cpython-310.pyc
|   |       |   |   |   |-- _collections.py
|   |       |   |   |   |-- _version.py
|   |       |   |   |   |-- connection.py
|   |       |   |   |   |-- connectionpool.py
|   |       |   |   |   |-- contrib
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |-- _appengine_environ.cpython-310.pyc
|   |       |   |   |   |   |   |-- appengine.cpython-310.pyc
|   |       |   |   |   |   |   |-- ntlmpool.cpython-310.pyc
|   |       |   |   |   |   |   |-- pyopenssl.cpython-310.pyc
|   |       |   |   |   |   |   |-- securetransport.cpython-310.pyc
|   |       |   |   |   |   |   `-- socks.cpython-310.pyc
|   |       |   |   |   |   |-- _appengine_environ.py
|   |       |   |   |   |   |-- _securetransport
|   |       |   |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |   |-- bindings.cpython-310.pyc
|   |       |   |   |   |   |   |   `-- low_level.cpython-310.pyc
|   |       |   |   |   |   |   |-- bindings.py
|   |       |   |   |   |   |   `-- low_level.py
|   |       |   |   |   |   |-- appengine.py
|   |       |   |   |   |   |-- ntlmpool.py
|   |       |   |   |   |   |-- pyopenssl.py
|   |       |   |   |   |   |-- securetransport.py
|   |       |   |   |   |   `-- socks.py
|   |       |   |   |   |-- exceptions.py
|   |       |   |   |   |-- fields.py
|   |       |   |   |   |-- filepost.py
|   |       |   |   |   |-- packages
|   |       |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   `-- six.cpython-310.pyc
|   |       |   |   |   |   |-- backports
|   |       |   |   |   |   |   |-- __init__.py
|   |       |   |   |   |   |   |-- __pycache__
|   |       |   |   |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |   |   |-- makefile.cpython-310.pyc
|   |       |   |   |   |   |   |   `-- weakref_finalize.cpython-310.pyc
|   |       |   |   |   |   |   |-- makefile.py
|   |       |   |   |   |   |   `-- weakref_finalize.py
|   |       |   |   |   |   `-- six.py
|   |       |   |   |   |-- poolmanager.py
|   |       |   |   |   |-- request.py
|   |       |   |   |   |-- response.py
|   |       |   |   |   `-- util
|   |       |   |   |       |-- __init__.py
|   |       |   |   |       |-- __pycache__
|   |       |   |   |       |   |-- __init__.cpython-310.pyc
|   |       |   |   |       |   |-- connection.cpython-310.pyc
|   |       |   |   |       |   |-- proxy.cpython-310.pyc
|   |       |   |   |       |   |-- queue.cpython-310.pyc
|   |       |   |   |       |   |-- request.cpython-310.pyc
|   |       |   |   |       |   |-- response.cpython-310.pyc
|   |       |   |   |       |   |-- retry.cpython-310.pyc
|   |       |   |   |       |   |-- ssl_.cpython-310.pyc
|   |       |   |   |       |   |-- ssl_match_hostname.cpython-310.pyc
|   |       |   |   |       |   |-- ssltransport.cpython-310.pyc
|   |       |   |   |       |   |-- timeout.cpython-310.pyc
|   |       |   |   |       |   |-- url.cpython-310.pyc
|   |       |   |   |       |   `-- wait.cpython-310.pyc
|   |       |   |   |       |-- connection.py
|   |       |   |   |       |-- proxy.py
|   |       |   |   |       |-- queue.py
|   |       |   |   |       |-- request.py
|   |       |   |   |       |-- response.py
|   |       |   |   |       |-- retry.py
|   |       |   |   |       |-- ssl_.py
|   |       |   |   |       |-- ssl_match_hostname.py
|   |       |   |   |       |-- ssltransport.py
|   |       |   |   |       |-- timeout.py
|   |       |   |   |       |-- url.py
|   |       |   |   |       `-- wait.py
|   |       |   |   `-- vendor.txt
|   |       |   `-- py.typed
|   |       |-- pip-25.1.1.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- REQUESTED
|   |       |   |-- WHEEL
|   |       |   |-- entry_points.txt
|   |       |   |-- licenses
|   |       |   |   |-- AUTHORS.txt
|   |       |   |   `-- LICENSE.txt
|   |       |   `-- top_level.txt
|   |       |-- pkg_resources
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   `-- __init__.cpython-310.pyc
|   |       |   |-- _vendor
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- appdirs.cpython-310.pyc
|   |       |   |   |   `-- pyparsing.cpython-310.pyc
|   |       |   |   |-- appdirs.py
|   |       |   |   |-- packaging
|   |       |   |   |   |-- __about__.py
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __about__.cpython-310.pyc
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- _compat.cpython-310.pyc
|   |       |   |   |   |   |-- _structures.cpython-310.pyc
|   |       |   |   |   |   |-- _typing.cpython-310.pyc
|   |       |   |   |   |   |-- markers.cpython-310.pyc
|   |       |   |   |   |   |-- requirements.cpython-310.pyc
|   |       |   |   |   |   |-- specifiers.cpython-310.pyc
|   |       |   |   |   |   |-- tags.cpython-310.pyc
|   |       |   |   |   |   |-- utils.cpython-310.pyc
|   |       |   |   |   |   `-- version.cpython-310.pyc
|   |       |   |   |   |-- _compat.py
|   |       |   |   |   |-- _structures.py
|   |       |   |   |   |-- _typing.py
|   |       |   |   |   |-- markers.py
|   |       |   |   |   |-- requirements.py
|   |       |   |   |   |-- specifiers.py
|   |       |   |   |   |-- tags.py
|   |       |   |   |   |-- utils.py
|   |       |   |   |   `-- version.py
|   |       |   |   `-- pyparsing.py
|   |       |   |-- extern
|   |       |   |   |-- __init__.py
|   |       |   |   `-- __pycache__
|   |       |   |       `-- __init__.cpython-310.pyc
|   |       |   `-- tests
|   |       |       `-- data
|   |       |           `-- my-test-package-source
|   |       |               |-- __pycache__
|   |       |               |   `-- setup.cpython-310.pyc
|   |       |               `-- setup.py
|   |       |-- propcache
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _helpers.cpython-310.pyc
|   |       |   |   |-- _helpers_py.cpython-310.pyc
|   |       |   |   `-- api.cpython-310.pyc
|   |       |   |-- _helpers.py
|   |       |   |-- _helpers_c.cp310-win_amd64.pyd
|   |       |   |-- _helpers_c.pyx
|   |       |   |-- _helpers_py.py
|   |       |   |-- api.py
|   |       |   `-- py.typed
|   |       |-- propcache-0.3.2.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- licenses
|   |       |   |   |-- LICENSE
|   |       |   |   `-- NOTICE
|   |       |   `-- top_level.txt
|   |       |-- pydantic
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _migration.cpython-310.pyc
|   |       |   |   |-- alias_generators.cpython-310.pyc
|   |       |   |   |-- aliases.cpython-310.pyc
|   |       |   |   |-- annotated_handlers.cpython-310.pyc
|   |       |   |   |-- class_validators.cpython-310.pyc
|   |       |   |   |-- color.cpython-310.pyc
|   |       |   |   |-- config.cpython-310.pyc
|   |       |   |   |-- dataclasses.cpython-310.pyc
|   |       |   |   |-- datetime_parse.cpython-310.pyc
|   |       |   |   |-- decorator.cpython-310.pyc
|   |       |   |   |-- env_settings.cpython-310.pyc
|   |       |   |   |-- error_wrappers.cpython-310.pyc
|   |       |   |   |-- errors.cpython-310.pyc
|   |       |   |   |-- fields.cpython-310.pyc
|   |       |   |   |-- functional_serializers.cpython-310.pyc
|   |       |   |   |-- functional_validators.cpython-310.pyc
|   |       |   |   |-- generics.cpython-310.pyc
|   |       |   |   |-- json.cpython-310.pyc
|   |       |   |   |-- json_schema.cpython-310.pyc
|   |       |   |   |-- main.cpython-310.pyc
|   |       |   |   |-- mypy.cpython-310.pyc
|   |       |   |   |-- networks.cpython-310.pyc
|   |       |   |   |-- parse.cpython-310.pyc
|   |       |   |   |-- root_model.cpython-310.pyc
|   |       |   |   |-- schema.cpython-310.pyc
|   |       |   |   |-- tools.cpython-310.pyc
|   |       |   |   |-- type_adapter.cpython-310.pyc
|   |       |   |   |-- types.cpython-310.pyc
|   |       |   |   |-- typing.cpython-310.pyc
|   |       |   |   |-- utils.cpython-310.pyc
|   |       |   |   |-- validate_call_decorator.cpython-310.pyc
|   |       |   |   |-- validators.cpython-310.pyc
|   |       |   |   |-- version.cpython-310.pyc
|   |       |   |   `-- warnings.cpython-310.pyc
|   |       |   |-- _internal
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- _config.cpython-310.pyc
|   |       |   |   |   |-- _core_metadata.cpython-310.pyc
|   |       |   |   |   |-- _core_utils.cpython-310.pyc
|   |       |   |   |   |-- _dataclasses.cpython-310.pyc
|   |       |   |   |   |-- _decorators.cpython-310.pyc
|   |       |   |   |   |-- _decorators_v1.cpython-310.pyc
|   |       |   |   |   |-- _discriminated_union.cpython-310.pyc
|   |       |   |   |   |-- _docs_extraction.cpython-310.pyc
|   |       |   |   |   |-- _fields.cpython-310.pyc
|   |       |   |   |   |-- _forward_ref.cpython-310.pyc
|   |       |   |   |   |-- _generate_schema.cpython-310.pyc
|   |       |   |   |   |-- _generics.cpython-310.pyc
|   |       |   |   |   |-- _git.cpython-310.pyc
|   |       |   |   |   |-- _import_utils.cpython-310.pyc
|   |       |   |   |   |-- _internal_dataclass.cpython-310.pyc
|   |       |   |   |   |-- _known_annotated_metadata.cpython-310.pyc
|   |       |   |   |   |-- _mock_val_ser.cpython-310.pyc
|   |       |   |   |   |-- _model_construction.cpython-310.pyc
|   |       |   |   |   |-- _namespace_utils.cpython-310.pyc
|   |       |   |   |   |-- _repr.cpython-310.pyc
|   |       |   |   |   |-- _schema_gather.cpython-310.pyc
|   |       |   |   |   |-- _schema_generation_shared.cpython-310.pyc
|   |       |   |   |   |-- _serializers.cpython-310.pyc
|   |       |   |   |   |-- _signature.cpython-310.pyc
|   |       |   |   |   |-- _typing_extra.cpython-310.pyc
|   |       |   |   |   |-- _utils.cpython-310.pyc
|   |       |   |   |   |-- _validate_call.cpython-310.pyc
|   |       |   |   |   `-- _validators.cpython-310.pyc
|   |       |   |   |-- _config.py
|   |       |   |   |-- _core_metadata.py
|   |       |   |   |-- _core_utils.py
|   |       |   |   |-- _dataclasses.py
|   |       |   |   |-- _decorators.py
|   |       |   |   |-- _decorators_v1.py
|   |       |   |   |-- _discriminated_union.py
|   |       |   |   |-- _docs_extraction.py
|   |       |   |   |-- _fields.py
|   |       |   |   |-- _forward_ref.py
|   |       |   |   |-- _generate_schema.py
|   |       |   |   |-- _generics.py
|   |       |   |   |-- _git.py
|   |       |   |   |-- _import_utils.py
|   |       |   |   |-- _internal_dataclass.py
|   |       |   |   |-- _known_annotated_metadata.py
|   |       |   |   |-- _mock_val_ser.py
|   |       |   |   |-- _model_construction.py
|   |       |   |   |-- _namespace_utils.py
|   |       |   |   |-- _repr.py
|   |       |   |   |-- _schema_gather.py
|   |       |   |   |-- _schema_generation_shared.py
|   |       |   |   |-- _serializers.py
|   |       |   |   |-- _signature.py
|   |       |   |   |-- _typing_extra.py
|   |       |   |   |-- _utils.py
|   |       |   |   |-- _validate_call.py
|   |       |   |   `-- _validators.py
|   |       |   |-- _migration.py
|   |       |   |-- alias_generators.py
|   |       |   |-- aliases.py
|   |       |   |-- annotated_handlers.py
|   |       |   |-- class_validators.py
|   |       |   |-- color.py
|   |       |   |-- config.py
|   |       |   |-- dataclasses.py
|   |       |   |-- datetime_parse.py
|   |       |   |-- decorator.py
|   |       |   |-- deprecated
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- class_validators.cpython-310.pyc
|   |       |   |   |   |-- config.cpython-310.pyc
|   |       |   |   |   |-- copy_internals.cpython-310.pyc
|   |       |   |   |   |-- decorator.cpython-310.pyc
|   |       |   |   |   |-- json.cpython-310.pyc
|   |       |   |   |   |-- parse.cpython-310.pyc
|   |       |   |   |   `-- tools.cpython-310.pyc
|   |       |   |   |-- class_validators.py
|   |       |   |   |-- config.py
|   |       |   |   |-- copy_internals.py
|   |       |   |   |-- decorator.py
|   |       |   |   |-- json.py
|   |       |   |   |-- parse.py
|   |       |   |   `-- tools.py
|   |       |   |-- env_settings.py
|   |       |   |-- error_wrappers.py
|   |       |   |-- errors.py
|   |       |   |-- experimental
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- arguments_schema.cpython-310.pyc
|   |       |   |   |   `-- pipeline.cpython-310.pyc
|   |       |   |   |-- arguments_schema.py
|   |       |   |   `-- pipeline.py
|   |       |   |-- fields.py
|   |       |   |-- functional_serializers.py
|   |       |   |-- functional_validators.py
|   |       |   |-- generics.py
|   |       |   |-- json.py
|   |       |   |-- json_schema.py
|   |       |   |-- main.py
|   |       |   |-- mypy.py
|   |       |   |-- networks.py
|   |       |   |-- parse.py
|   |       |   |-- plugin
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- _loader.cpython-310.pyc
|   |       |   |   |   `-- _schema_validator.cpython-310.pyc
|   |       |   |   |-- _loader.py
|   |       |   |   `-- _schema_validator.py
|   |       |   |-- py.typed
|   |       |   |-- root_model.py
|   |       |   |-- schema.py
|   |       |   |-- tools.py
|   |       |   |-- type_adapter.py
|   |       |   |-- types.py
|   |       |   |-- typing.py
|   |       |   |-- utils.py
|   |       |   |-- v1
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- _hypothesis_plugin.cpython-310.pyc
|   |       |   |   |   |-- annotated_types.cpython-310.pyc
|   |       |   |   |   |-- class_validators.cpython-310.pyc
|   |       |   |   |   |-- color.cpython-310.pyc
|   |       |   |   |   |-- config.cpython-310.pyc
|   |       |   |   |   |-- dataclasses.cpython-310.pyc
|   |       |   |   |   |-- datetime_parse.cpython-310.pyc
|   |       |   |   |   |-- decorator.cpython-310.pyc
|   |       |   |   |   |-- env_settings.cpython-310.pyc
|   |       |   |   |   |-- error_wrappers.cpython-310.pyc
|   |       |   |   |   |-- errors.cpython-310.pyc
|   |       |   |   |   |-- fields.cpython-310.pyc
|   |       |   |   |   |-- generics.cpython-310.pyc
|   |       |   |   |   |-- json.cpython-310.pyc
|   |       |   |   |   |-- main.cpython-310.pyc
|   |       |   |   |   |-- mypy.cpython-310.pyc
|   |       |   |   |   |-- networks.cpython-310.pyc
|   |       |   |   |   |-- parse.cpython-310.pyc
|   |       |   |   |   |-- schema.cpython-310.pyc
|   |       |   |   |   |-- tools.cpython-310.pyc
|   |       |   |   |   |-- types.cpython-310.pyc
|   |       |   |   |   |-- typing.cpython-310.pyc
|   |       |   |   |   |-- utils.cpython-310.pyc
|   |       |   |   |   |-- validators.cpython-310.pyc
|   |       |   |   |   `-- version.cpython-310.pyc
|   |       |   |   |-- _hypothesis_plugin.py
|   |       |   |   |-- annotated_types.py
|   |       |   |   |-- class_validators.py
|   |       |   |   |-- color.py
|   |       |   |   |-- config.py
|   |       |   |   |-- dataclasses.py
|   |       |   |   |-- datetime_parse.py
|   |       |   |   |-- decorator.py
|   |       |   |   |-- env_settings.py
|   |       |   |   |-- error_wrappers.py
|   |       |   |   |-- errors.py
|   |       |   |   |-- fields.py
|   |       |   |   |-- generics.py
|   |       |   |   |-- json.py
|   |       |   |   |-- main.py
|   |       |   |   |-- mypy.py
|   |       |   |   |-- networks.py
|   |       |   |   |-- parse.py
|   |       |   |   |-- py.typed
|   |       |   |   |-- schema.py
|   |       |   |   |-- tools.py
|   |       |   |   |-- types.py
|   |       |   |   |-- typing.py
|   |       |   |   |-- utils.py
|   |       |   |   |-- validators.py
|   |       |   |   `-- version.py
|   |       |   |-- validate_call_decorator.py
|   |       |   |-- validators.py
|   |       |   |-- version.py
|   |       |   `-- warnings.py
|   |       |-- pydantic-2.11.7.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- licenses
|   |       |       `-- LICENSE
|   |       |-- pydantic_core
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   `-- core_schema.cpython-310.pyc
|   |       |   |-- _pydantic_core.cp310-win_amd64.pyd
|   |       |   |-- _pydantic_core.pyi
|   |       |   |-- core_schema.py
|   |       |   `-- py.typed
|   |       |-- pydantic_core-2.33.2.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- licenses
|   |       |       `-- LICENSE
|   |       |-- python_docx-1.2.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- REQUESTED
|   |       |   |-- WHEEL
|   |       |   |-- licenses
|   |       |   |   `-- LICENSE
|   |       |   `-- top_level.txt
|   |       |-- python_dotenv-1.1.1.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- REQUESTED
|   |       |   |-- WHEEL
|   |       |   |-- entry_points.txt
|   |       |   |-- licenses
|   |       |   |   `-- LICENSE
|   |       |   `-- top_level.txt
|   |       |-- requests
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- __version__.cpython-310.pyc
|   |       |   |   |-- _internal_utils.cpython-310.pyc
|   |       |   |   |-- adapters.cpython-310.pyc
|   |       |   |   |-- api.cpython-310.pyc
|   |       |   |   |-- auth.cpython-310.pyc
|   |       |   |   |-- certs.cpython-310.pyc
|   |       |   |   |-- compat.cpython-310.pyc
|   |       |   |   |-- cookies.cpython-310.pyc
|   |       |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |-- help.cpython-310.pyc
|   |       |   |   |-- hooks.cpython-310.pyc
|   |       |   |   |-- models.cpython-310.pyc
|   |       |   |   |-- packages.cpython-310.pyc
|   |       |   |   |-- sessions.cpython-310.pyc
|   |       |   |   |-- status_codes.cpython-310.pyc
|   |       |   |   |-- structures.cpython-310.pyc
|   |       |   |   `-- utils.cpython-310.pyc
|   |       |   |-- __version__.py
|   |       |   |-- _internal_utils.py
|   |       |   |-- adapters.py
|   |       |   |-- api.py
|   |       |   |-- auth.py
|   |       |   |-- certs.py
|   |       |   |-- compat.py
|   |       |   |-- cookies.py
|   |       |   |-- exceptions.py
|   |       |   |-- help.py
|   |       |   |-- hooks.py
|   |       |   |-- models.py
|   |       |   |-- packages.py
|   |       |   |-- sessions.py
|   |       |   |-- status_codes.py
|   |       |   |-- structures.py
|   |       |   `-- utils.py
|   |       |-- requests-2.32.4.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- REQUESTED
|   |       |   |-- WHEEL
|   |       |   |-- licenses
|   |       |   |   `-- LICENSE
|   |       |   `-- top_level.txt
|   |       |-- setuptools
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _deprecation_warning.cpython-310.pyc
|   |       |   |   |-- _imp.cpython-310.pyc
|   |       |   |   |-- archive_util.cpython-310.pyc
|   |       |   |   |-- build_meta.cpython-310.pyc
|   |       |   |   |-- config.cpython-310.pyc
|   |       |   |   |-- dep_util.cpython-310.pyc
|   |       |   |   |-- depends.cpython-310.pyc
|   |       |   |   |-- dist.cpython-310.pyc
|   |       |   |   |-- errors.cpython-310.pyc
|   |       |   |   |-- extension.cpython-310.pyc
|   |       |   |   |-- glob.cpython-310.pyc
|   |       |   |   |-- installer.cpython-310.pyc
|   |       |   |   |-- launch.cpython-310.pyc
|   |       |   |   |-- lib2to3_ex.cpython-310.pyc
|   |       |   |   |-- monkey.cpython-310.pyc
|   |       |   |   |-- msvc.cpython-310.pyc
|   |       |   |   |-- namespaces.cpython-310.pyc
|   |       |   |   |-- package_index.cpython-310.pyc
|   |       |   |   |-- py34compat.cpython-310.pyc
|   |       |   |   |-- sandbox.cpython-310.pyc
|   |       |   |   |-- unicode_utils.cpython-310.pyc
|   |       |   |   |-- version.cpython-310.pyc
|   |       |   |   |-- wheel.cpython-310.pyc
|   |       |   |   `-- windows_support.cpython-310.pyc
|   |       |   |-- _deprecation_warning.py
|   |       |   |-- _distutils
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- _msvccompiler.cpython-310.pyc
|   |       |   |   |   |-- archive_util.cpython-310.pyc
|   |       |   |   |   |-- bcppcompiler.cpython-310.pyc
|   |       |   |   |   |-- ccompiler.cpython-310.pyc
|   |       |   |   |   |-- cmd.cpython-310.pyc
|   |       |   |   |   |-- config.cpython-310.pyc
|   |       |   |   |   |-- core.cpython-310.pyc
|   |       |   |   |   |-- cygwinccompiler.cpython-310.pyc
|   |       |   |   |   |-- debug.cpython-310.pyc
|   |       |   |   |   |-- dep_util.cpython-310.pyc
|   |       |   |   |   |-- dir_util.cpython-310.pyc
|   |       |   |   |   |-- dist.cpython-310.pyc
|   |       |   |   |   |-- errors.cpython-310.pyc
|   |       |   |   |   |-- extension.cpython-310.pyc
|   |       |   |   |   |-- fancy_getopt.cpython-310.pyc
|   |       |   |   |   |-- file_util.cpython-310.pyc
|   |       |   |   |   |-- filelist.cpython-310.pyc
|   |       |   |   |   |-- log.cpython-310.pyc
|   |       |   |   |   |-- msvc9compiler.cpython-310.pyc
|   |       |   |   |   |-- msvccompiler.cpython-310.pyc
|   |       |   |   |   |-- py35compat.cpython-310.pyc
|   |       |   |   |   |-- py38compat.cpython-310.pyc
|   |       |   |   |   |-- spawn.cpython-310.pyc
|   |       |   |   |   |-- sysconfig.cpython-310.pyc
|   |       |   |   |   |-- text_file.cpython-310.pyc
|   |       |   |   |   |-- unixccompiler.cpython-310.pyc
|   |       |   |   |   |-- util.cpython-310.pyc
|   |       |   |   |   |-- version.cpython-310.pyc
|   |       |   |   |   `-- versionpredicate.cpython-310.pyc
|   |       |   |   |-- _msvccompiler.py
|   |       |   |   |-- archive_util.py
|   |       |   |   |-- bcppcompiler.py
|   |       |   |   |-- ccompiler.py
|   |       |   |   |-- cmd.py
|   |       |   |   |-- command
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- bdist.cpython-310.pyc
|   |       |   |   |   |   |-- bdist_dumb.cpython-310.pyc
|   |       |   |   |   |   |-- bdist_msi.cpython-310.pyc
|   |       |   |   |   |   |-- bdist_rpm.cpython-310.pyc
|   |       |   |   |   |   |-- bdist_wininst.cpython-310.pyc
|   |       |   |   |   |   |-- build.cpython-310.pyc
|   |       |   |   |   |   |-- build_clib.cpython-310.pyc
|   |       |   |   |   |   |-- build_ext.cpython-310.pyc
|   |       |   |   |   |   |-- build_py.cpython-310.pyc
|   |       |   |   |   |   |-- build_scripts.cpython-310.pyc
|   |       |   |   |   |   |-- check.cpython-310.pyc
|   |       |   |   |   |   |-- clean.cpython-310.pyc
|   |       |   |   |   |   |-- config.cpython-310.pyc
|   |       |   |   |   |   |-- install.cpython-310.pyc
|   |       |   |   |   |   |-- install_data.cpython-310.pyc
|   |       |   |   |   |   |-- install_egg_info.cpython-310.pyc
|   |       |   |   |   |   |-- install_headers.cpython-310.pyc
|   |       |   |   |   |   |-- install_lib.cpython-310.pyc
|   |       |   |   |   |   |-- install_scripts.cpython-310.pyc
|   |       |   |   |   |   |-- py37compat.cpython-310.pyc
|   |       |   |   |   |   |-- register.cpython-310.pyc
|   |       |   |   |   |   |-- sdist.cpython-310.pyc
|   |       |   |   |   |   `-- upload.cpython-310.pyc
|   |       |   |   |   |-- bdist.py
|   |       |   |   |   |-- bdist_dumb.py
|   |       |   |   |   |-- bdist_msi.py
|   |       |   |   |   |-- bdist_rpm.py
|   |       |   |   |   |-- bdist_wininst.py
|   |       |   |   |   |-- build.py
|   |       |   |   |   |-- build_clib.py
|   |       |   |   |   |-- build_ext.py
|   |       |   |   |   |-- build_py.py
|   |       |   |   |   |-- build_scripts.py
|   |       |   |   |   |-- check.py
|   |       |   |   |   |-- clean.py
|   |       |   |   |   |-- config.py
|   |       |   |   |   |-- install.py
|   |       |   |   |   |-- install_data.py
|   |       |   |   |   |-- install_egg_info.py
|   |       |   |   |   |-- install_headers.py
|   |       |   |   |   |-- install_lib.py
|   |       |   |   |   |-- install_scripts.py
|   |       |   |   |   |-- py37compat.py
|   |       |   |   |   |-- register.py
|   |       |   |   |   |-- sdist.py
|   |       |   |   |   `-- upload.py
|   |       |   |   |-- config.py
|   |       |   |   |-- core.py
|   |       |   |   |-- cygwinccompiler.py
|   |       |   |   |-- debug.py
|   |       |   |   |-- dep_util.py
|   |       |   |   |-- dir_util.py
|   |       |   |   |-- dist.py
|   |       |   |   |-- errors.py
|   |       |   |   |-- extension.py
|   |       |   |   |-- fancy_getopt.py
|   |       |   |   |-- file_util.py
|   |       |   |   |-- filelist.py
|   |       |   |   |-- log.py
|   |       |   |   |-- msvc9compiler.py
|   |       |   |   |-- msvccompiler.py
|   |       |   |   |-- py35compat.py
|   |       |   |   |-- py38compat.py
|   |       |   |   |-- spawn.py
|   |       |   |   |-- sysconfig.py
|   |       |   |   |-- text_file.py
|   |       |   |   |-- unixccompiler.py
|   |       |   |   |-- util.py
|   |       |   |   |-- version.py
|   |       |   |   `-- versionpredicate.py
|   |       |   |-- _imp.py
|   |       |   |-- _vendor
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- ordered_set.cpython-310.pyc
|   |       |   |   |   `-- pyparsing.cpython-310.pyc
|   |       |   |   |-- more_itertools
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- more.cpython-310.pyc
|   |       |   |   |   |   `-- recipes.cpython-310.pyc
|   |       |   |   |   |-- more.py
|   |       |   |   |   `-- recipes.py
|   |       |   |   |-- ordered_set.py
|   |       |   |   |-- packaging
|   |       |   |   |   |-- __about__.py
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __about__.cpython-310.pyc
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- _compat.cpython-310.pyc
|   |       |   |   |   |   |-- _structures.cpython-310.pyc
|   |       |   |   |   |   |-- _typing.cpython-310.pyc
|   |       |   |   |   |   |-- markers.cpython-310.pyc
|   |       |   |   |   |   |-- requirements.cpython-310.pyc
|   |       |   |   |   |   |-- specifiers.cpython-310.pyc
|   |       |   |   |   |   |-- tags.cpython-310.pyc
|   |       |   |   |   |   |-- utils.cpython-310.pyc
|   |       |   |   |   |   `-- version.cpython-310.pyc
|   |       |   |   |   |-- _compat.py
|   |       |   |   |   |-- _structures.py
|   |       |   |   |   |-- _typing.py
|   |       |   |   |   |-- markers.py
|   |       |   |   |   |-- requirements.py
|   |       |   |   |   |-- specifiers.py
|   |       |   |   |   |-- tags.py
|   |       |   |   |   |-- utils.py
|   |       |   |   |   `-- version.py
|   |       |   |   `-- pyparsing.py
|   |       |   |-- archive_util.py
|   |       |   |-- build_meta.py
|   |       |   |-- cli-32.exe
|   |       |   |-- cli-64.exe
|   |       |   |-- cli.exe
|   |       |   |-- command
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- alias.cpython-310.pyc
|   |       |   |   |   |-- bdist_egg.cpython-310.pyc
|   |       |   |   |   |-- bdist_rpm.cpython-310.pyc
|   |       |   |   |   |-- build_clib.cpython-310.pyc
|   |       |   |   |   |-- build_ext.cpython-310.pyc
|   |       |   |   |   |-- build_py.cpython-310.pyc
|   |       |   |   |   |-- develop.cpython-310.pyc
|   |       |   |   |   |-- dist_info.cpython-310.pyc
|   |       |   |   |   |-- easy_install.cpython-310.pyc
|   |       |   |   |   |-- egg_info.cpython-310.pyc
|   |       |   |   |   |-- install.cpython-310.pyc
|   |       |   |   |   |-- install_egg_info.cpython-310.pyc
|   |       |   |   |   |-- install_lib.cpython-310.pyc
|   |       |   |   |   |-- install_scripts.cpython-310.pyc
|   |       |   |   |   |-- py36compat.cpython-310.pyc
|   |       |   |   |   |-- register.cpython-310.pyc
|   |       |   |   |   |-- rotate.cpython-310.pyc
|   |       |   |   |   |-- saveopts.cpython-310.pyc
|   |       |   |   |   |-- sdist.cpython-310.pyc
|   |       |   |   |   |-- setopt.cpython-310.pyc
|   |       |   |   |   |-- test.cpython-310.pyc
|   |       |   |   |   |-- upload.cpython-310.pyc
|   |       |   |   |   `-- upload_docs.cpython-310.pyc
|   |       |   |   |-- alias.py
|   |       |   |   |-- bdist_egg.py
|   |       |   |   |-- bdist_rpm.py
|   |       |   |   |-- build_clib.py
|   |       |   |   |-- build_ext.py
|   |       |   |   |-- build_py.py
|   |       |   |   |-- develop.py
|   |       |   |   |-- dist_info.py
|   |       |   |   |-- easy_install.py
|   |       |   |   |-- egg_info.py
|   |       |   |   |-- install.py
|   |       |   |   |-- install_egg_info.py
|   |       |   |   |-- install_lib.py
|   |       |   |   |-- install_scripts.py
|   |       |   |   |-- launcher manifest.xml
|   |       |   |   |-- py36compat.py
|   |       |   |   |-- register.py
|   |       |   |   |-- rotate.py
|   |       |   |   |-- saveopts.py
|   |       |   |   |-- sdist.py
|   |       |   |   |-- setopt.py
|   |       |   |   |-- test.py
|   |       |   |   |-- upload.py
|   |       |   |   `-- upload_docs.py
|   |       |   |-- config.py
|   |       |   |-- dep_util.py
|   |       |   |-- depends.py
|   |       |   |-- dist.py
|   |       |   |-- errors.py
|   |       |   |-- extension.py
|   |       |   |-- extern
|   |       |   |   |-- __init__.py
|   |       |   |   `-- __pycache__
|   |       |   |       `-- __init__.cpython-310.pyc
|   |       |   |-- glob.py
|   |       |   |-- gui-32.exe
|   |       |   |-- gui-64.exe
|   |       |   |-- gui.exe
|   |       |   |-- installer.py
|   |       |   |-- launch.py
|   |       |   |-- lib2to3_ex.py
|   |       |   |-- monkey.py
|   |       |   |-- msvc.py
|   |       |   |-- namespaces.py
|   |       |   |-- package_index.py
|   |       |   |-- py34compat.py
|   |       |   |-- sandbox.py
|   |       |   |-- script (dev).tmpl
|   |       |   |-- script.tmpl
|   |       |   |-- unicode_utils.py
|   |       |   |-- version.py
|   |       |   |-- wheel.py
|   |       |   `-- windows_support.py
|   |       |-- setuptools-57.4.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- LICENSE
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- REQUESTED
|   |       |   |-- WHEEL
|   |       |   |-- entry_points.txt
|   |       |   `-- top_level.txt
|   |       |-- sniffio
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _impl.cpython-310.pyc
|   |       |   |   `-- _version.cpython-310.pyc
|   |       |   |-- _impl.py
|   |       |   |-- _tests
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   `-- test_sniffio.cpython-310.pyc
|   |       |   |   `-- test_sniffio.py
|   |       |   |-- _version.py
|   |       |   `-- py.typed
|   |       |-- sniffio-1.3.1.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- LICENSE
|   |       |   |-- LICENSE.APACHE2
|   |       |   |-- LICENSE.MIT
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- top_level.txt
|   |       |-- tqdm
|   |       |   |-- __init__.py
|   |       |   |-- __main__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- __main__.cpython-310.pyc
|   |       |   |   |-- _dist_ver.cpython-310.pyc
|   |       |   |   |-- _main.cpython-310.pyc
|   |       |   |   |-- _monitor.cpython-310.pyc
|   |       |   |   |-- _tqdm.cpython-310.pyc
|   |       |   |   |-- _tqdm_gui.cpython-310.pyc
|   |       |   |   |-- _tqdm_notebook.cpython-310.pyc
|   |       |   |   |-- _tqdm_pandas.cpython-310.pyc
|   |       |   |   |-- _utils.cpython-310.pyc
|   |       |   |   |-- asyncio.cpython-310.pyc
|   |       |   |   |-- auto.cpython-310.pyc
|   |       |   |   |-- autonotebook.cpython-310.pyc
|   |       |   |   |-- cli.cpython-310.pyc
|   |       |   |   |-- dask.cpython-310.pyc
|   |       |   |   |-- gui.cpython-310.pyc
|   |       |   |   |-- keras.cpython-310.pyc
|   |       |   |   |-- notebook.cpython-310.pyc
|   |       |   |   |-- rich.cpython-310.pyc
|   |       |   |   |-- std.cpython-310.pyc
|   |       |   |   |-- tk.cpython-310.pyc
|   |       |   |   |-- utils.cpython-310.pyc
|   |       |   |   `-- version.cpython-310.pyc
|   |       |   |-- _dist_ver.py
|   |       |   |-- _main.py
|   |       |   |-- _monitor.py
|   |       |   |-- _tqdm.py
|   |       |   |-- _tqdm_gui.py
|   |       |   |-- _tqdm_notebook.py
|   |       |   |-- _tqdm_pandas.py
|   |       |   |-- _utils.py
|   |       |   |-- asyncio.py
|   |       |   |-- auto.py
|   |       |   |-- autonotebook.py
|   |       |   |-- cli.py
|   |       |   |-- completion.sh
|   |       |   |-- contrib
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- bells.cpython-310.pyc
|   |       |   |   |   |-- concurrent.cpython-310.pyc
|   |       |   |   |   |-- discord.cpython-310.pyc
|   |       |   |   |   |-- itertools.cpython-310.pyc
|   |       |   |   |   |-- logging.cpython-310.pyc
|   |       |   |   |   |-- slack.cpython-310.pyc
|   |       |   |   |   |-- telegram.cpython-310.pyc
|   |       |   |   |   `-- utils_worker.cpython-310.pyc
|   |       |   |   |-- bells.py
|   |       |   |   |-- concurrent.py
|   |       |   |   |-- discord.py
|   |       |   |   |-- itertools.py
|   |       |   |   |-- logging.py
|   |       |   |   |-- slack.py
|   |       |   |   |-- telegram.py
|   |       |   |   `-- utils_worker.py
|   |       |   |-- dask.py
|   |       |   |-- gui.py
|   |       |   |-- keras.py
|   |       |   |-- notebook.py
|   |       |   |-- rich.py
|   |       |   |-- std.py
|   |       |   |-- tk.py
|   |       |   |-- tqdm.1
|   |       |   |-- utils.py
|   |       |   `-- version.py
|   |       |-- tqdm-4.67.1.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- LICENCE
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   |-- entry_points.txt
|   |       |   `-- top_level.txt
|   |       |-- typing_extensions-4.14.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- licenses
|   |       |       `-- LICENSE
|   |       |-- typing_extensions.py
|   |       |-- typing_inspection
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- introspection.cpython-310.pyc
|   |       |   |   `-- typing_objects.cpython-310.pyc
|   |       |   |-- introspection.py
|   |       |   |-- py.typed
|   |       |   |-- typing_objects.py
|   |       |   `-- typing_objects.pyi
|   |       |-- typing_inspection-0.4.1.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- licenses
|   |       |       `-- LICENSE
|   |       |-- urllib3
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _base_connection.cpython-310.pyc
|   |       |   |   |-- _collections.cpython-310.pyc
|   |       |   |   |-- _request_methods.cpython-310.pyc
|   |       |   |   |-- _version.cpython-310.pyc
|   |       |   |   |-- connection.cpython-310.pyc
|   |       |   |   |-- connectionpool.cpython-310.pyc
|   |       |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |-- fields.cpython-310.pyc
|   |       |   |   |-- filepost.cpython-310.pyc
|   |       |   |   |-- poolmanager.cpython-310.pyc
|   |       |   |   `-- response.cpython-310.pyc
|   |       |   |-- _base_connection.py
|   |       |   |-- _collections.py
|   |       |   |-- _request_methods.py
|   |       |   |-- _version.py
|   |       |   |-- connection.py
|   |       |   |-- connectionpool.py
|   |       |   |-- contrib
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- pyopenssl.cpython-310.pyc
|   |       |   |   |   `-- socks.cpython-310.pyc
|   |       |   |   |-- emscripten
|   |       |   |   |   |-- __init__.py
|   |       |   |   |   |-- __pycache__
|   |       |   |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |   |-- connection.cpython-310.pyc
|   |       |   |   |   |   |-- fetch.cpython-310.pyc
|   |       |   |   |   |   |-- request.cpython-310.pyc
|   |       |   |   |   |   `-- response.cpython-310.pyc
|   |       |   |   |   |-- connection.py
|   |       |   |   |   |-- emscripten_fetch_worker.js
|   |       |   |   |   |-- fetch.py
|   |       |   |   |   |-- request.py
|   |       |   |   |   `-- response.py
|   |       |   |   |-- pyopenssl.py
|   |       |   |   `-- socks.py
|   |       |   |-- exceptions.py
|   |       |   |-- fields.py
|   |       |   |-- filepost.py
|   |       |   |-- http2
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- connection.cpython-310.pyc
|   |       |   |   |   `-- probe.cpython-310.pyc
|   |       |   |   |-- connection.py
|   |       |   |   `-- probe.py
|   |       |   |-- poolmanager.py
|   |       |   |-- py.typed
|   |       |   |-- response.py
|   |       |   `-- util
|   |       |       |-- __init__.py
|   |       |       |-- __pycache__
|   |       |       |   |-- __init__.cpython-310.pyc
|   |       |       |   |-- connection.cpython-310.pyc
|   |       |       |   |-- proxy.cpython-310.pyc
|   |       |       |   |-- request.cpython-310.pyc
|   |       |       |   |-- response.cpython-310.pyc
|   |       |       |   |-- retry.cpython-310.pyc
|   |       |       |   |-- ssl_.cpython-310.pyc
|   |       |       |   |-- ssl_match_hostname.cpython-310.pyc
|   |       |       |   |-- ssltransport.cpython-310.pyc
|   |       |       |   |-- timeout.cpython-310.pyc
|   |       |       |   |-- url.cpython-310.pyc
|   |       |       |   |-- util.cpython-310.pyc
|   |       |       |   `-- wait.cpython-310.pyc
|   |       |       |-- connection.py
|   |       |       |-- proxy.py
|   |       |       |-- request.py
|   |       |       |-- response.py
|   |       |       |-- retry.py
|   |       |       |-- ssl_.py
|   |       |       |-- ssl_match_hostname.py
|   |       |       |-- ssltransport.py
|   |       |       |-- timeout.py
|   |       |       |-- url.py
|   |       |       |-- util.py
|   |       |       `-- wait.py
|   |       |-- urllib3-2.5.0.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   |-- WHEEL
|   |       |   `-- licenses
|   |       |       `-- LICENSE.txt
|   |       |-- werkzeug
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _internal.cpython-310.pyc
|   |       |   |   |-- _reloader.cpython-310.pyc
|   |       |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |-- formparser.cpython-310.pyc
|   |       |   |   |-- http.cpython-310.pyc
|   |       |   |   |-- local.cpython-310.pyc
|   |       |   |   |-- security.cpython-310.pyc
|   |       |   |   |-- serving.cpython-310.pyc
|   |       |   |   |-- test.cpython-310.pyc
|   |       |   |   |-- testapp.cpython-310.pyc
|   |       |   |   |-- urls.cpython-310.pyc
|   |       |   |   |-- user_agent.cpython-310.pyc
|   |       |   |   |-- utils.cpython-310.pyc
|   |       |   |   `-- wsgi.cpython-310.pyc
|   |       |   |-- _internal.py
|   |       |   |-- _reloader.py
|   |       |   |-- datastructures
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- accept.cpython-310.pyc
|   |       |   |   |   |-- auth.cpython-310.pyc
|   |       |   |   |   |-- cache_control.cpython-310.pyc
|   |       |   |   |   |-- csp.cpython-310.pyc
|   |       |   |   |   |-- etag.cpython-310.pyc
|   |       |   |   |   |-- file_storage.cpython-310.pyc
|   |       |   |   |   |-- headers.cpython-310.pyc
|   |       |   |   |   |-- mixins.cpython-310.pyc
|   |       |   |   |   |-- range.cpython-310.pyc
|   |       |   |   |   `-- structures.cpython-310.pyc
|   |       |   |   |-- accept.py
|   |       |   |   |-- auth.py
|   |       |   |   |-- cache_control.py
|   |       |   |   |-- csp.py
|   |       |   |   |-- etag.py
|   |       |   |   |-- file_storage.py
|   |       |   |   |-- headers.py
|   |       |   |   |-- mixins.py
|   |       |   |   |-- range.py
|   |       |   |   `-- structures.py
|   |       |   |-- debug
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- console.cpython-310.pyc
|   |       |   |   |   |-- repr.cpython-310.pyc
|   |       |   |   |   `-- tbtools.cpython-310.pyc
|   |       |   |   |-- console.py
|   |       |   |   |-- repr.py
|   |       |   |   |-- shared
|   |       |   |   |   |-- ICON_LICENSE.md
|   |       |   |   |   |-- console.png
|   |       |   |   |   |-- debugger.js
|   |       |   |   |   |-- less.png
|   |       |   |   |   |-- more.png
|   |       |   |   |   `-- style.css
|   |       |   |   `-- tbtools.py
|   |       |   |-- exceptions.py
|   |       |   |-- formparser.py
|   |       |   |-- http.py
|   |       |   |-- local.py
|   |       |   |-- middleware
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- dispatcher.cpython-310.pyc
|   |       |   |   |   |-- http_proxy.cpython-310.pyc
|   |       |   |   |   |-- lint.cpython-310.pyc
|   |       |   |   |   |-- profiler.cpython-310.pyc
|   |       |   |   |   |-- proxy_fix.cpython-310.pyc
|   |       |   |   |   `-- shared_data.cpython-310.pyc
|   |       |   |   |-- dispatcher.py
|   |       |   |   |-- http_proxy.py
|   |       |   |   |-- lint.py
|   |       |   |   |-- profiler.py
|   |       |   |   |-- proxy_fix.py
|   |       |   |   `-- shared_data.py
|   |       |   |-- py.typed
|   |       |   |-- routing
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- converters.cpython-310.pyc
|   |       |   |   |   |-- exceptions.cpython-310.pyc
|   |       |   |   |   |-- map.cpython-310.pyc
|   |       |   |   |   |-- matcher.cpython-310.pyc
|   |       |   |   |   `-- rules.cpython-310.pyc
|   |       |   |   |-- converters.py
|   |       |   |   |-- exceptions.py
|   |       |   |   |-- map.py
|   |       |   |   |-- matcher.py
|   |       |   |   `-- rules.py
|   |       |   |-- sansio
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- http.cpython-310.pyc
|   |       |   |   |   |-- multipart.cpython-310.pyc
|   |       |   |   |   |-- request.cpython-310.pyc
|   |       |   |   |   |-- response.cpython-310.pyc
|   |       |   |   |   `-- utils.cpython-310.pyc
|   |       |   |   |-- http.py
|   |       |   |   |-- multipart.py
|   |       |   |   |-- request.py
|   |       |   |   |-- response.py
|   |       |   |   `-- utils.py
|   |       |   |-- security.py
|   |       |   |-- serving.py
|   |       |   |-- test.py
|   |       |   |-- testapp.py
|   |       |   |-- urls.py
|   |       |   |-- user_agent.py
|   |       |   |-- utils.py
|   |       |   |-- wrappers
|   |       |   |   |-- __init__.py
|   |       |   |   |-- __pycache__
|   |       |   |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |   |-- request.cpython-310.pyc
|   |       |   |   |   `-- response.cpython-310.pyc
|   |       |   |   |-- request.py
|   |       |   |   `-- response.py
|   |       |   `-- wsgi.py
|   |       |-- werkzeug-3.1.3.dist-info
|   |       |   |-- INSTALLER
|   |       |   |-- LICENSE.txt
|   |       |   |-- METADATA
|   |       |   |-- RECORD
|   |       |   `-- WHEEL
|   |       |-- yarl
|   |       |   |-- __init__.py
|   |       |   |-- __pycache__
|   |       |   |   |-- __init__.cpython-310.pyc
|   |       |   |   |-- _parse.cpython-310.pyc
|   |       |   |   |-- _path.cpython-310.pyc
|   |       |   |   |-- _query.cpython-310.pyc
|   |       |   |   |-- _quoters.cpython-310.pyc
|   |       |   |   |-- _quoting.cpython-310.pyc
|   |       |   |   |-- _quoting_py.cpython-310.pyc
|   |       |   |   `-- _url.cpython-310.pyc
|   |       |   |-- _parse.py
|   |       |   |-- _path.py
|   |       |   |-- _query.py
|   |       |   |-- _quoters.py
|   |       |   |-- _quoting.py
|   |       |   |-- _quoting_c.cp310-win_amd64.pyd
|   |       |   |-- _quoting_c.pyx
|   |       |   |-- _quoting_py.py
|   |       |   |-- _url.py
|   |       |   `-- py.typed
|   |       `-- yarl-1.20.1.dist-info
|   |           |-- INSTALLER
|   |           |-- METADATA
|   |           |-- RECORD
|   |           |-- WHEEL
|   |           |-- licenses
|   |           |   |-- LICENSE
|   |           |   `-- NOTICE
|   |           `-- top_level.txt
|   |-- Scripts
|   |   |-- Activate.ps1
|   |   |-- activate
|   |   |-- activate.bat
|   |   |-- deactivate.bat
|   |   |-- distro.exe
|   |   |-- dotenv.exe
|   |   |-- flask.exe
|   |   |-- httpx.exe
|   |   |-- normalizer.exe
|   |   |-- openai.exe
|   |   |-- pip.exe
|   |   |-- pip3.10.exe
|   |   |-- pip3.exe
|   |   |-- python.exe
|   |   |-- pythonw.exe
|   |   `-- tqdm.exe
|   `-- pyvenv.cfg
|-- f
|-- helm
|   |-- values.runner.yaml
|   `-- values.yaml
|-- manifests
|   |-- arc-deployment.yaml
|   |-- deployment.yaml
|   |-- ingress.yaml
|   `-- service.yaml
|-- requirements.txt
`-- tree_output.txt

631 directories, 4959 files
