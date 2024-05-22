# mautrix-meta

![Version: 0.0.3](https://img.shields.io/badge/Version-0.0.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.3.1](https://img.shields.io/badge/AppVersion-0.3.1-informational?style=flat-square)

A Matrix-meta puppeting bridge.

**Homepage:** <https://matrix.to/#/#meta:maunium.net>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Loic Kalbermatter | <loic.kalbermatter@pulseflow.ch> |  |

## Source Code

* <https://github.com/mautrix/meta>
* <https://code.pulseflow.ch/PulseDev/mautrix-meta>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| config.appservice.address | string | `"http://localhost:29319"` |  |
| config.appservice.as_token | string | `"This value is generated when generating the registration"` |  |
| config.appservice.async_transactions | bool | `false` |  |
| config.appservice.bot.avatar | string | `"mxc://maunium.net/JxjlbZUlCPULEeHZSwleUXQv"` |  |
| config.appservice.bot.displayname | string | `"Instagram bridge bot"` |  |
| config.appservice.bot.username | string | `"instagrambot"` |  |
| config.appservice.database.max_conn_idle_time | string | `nil` |  |
| config.appservice.database.max_conn_lifetime | string | `nil` |  |
| config.appservice.database.max_idle_conns | int | `2` |  |
| config.appservice.database.max_open_conns | int | `20` |  |
| config.appservice.database.type | string | `"postgres"` |  |
| config.appservice.database.uri | string | `"postgres://user:password@host/database?sslmode=disable"` |  |
| config.appservice.ephemeral_events | bool | `true` |  |
| config.appservice.hostname | string | `"0.0.0.0"` |  |
| config.appservice.hs_token | string | `"This value is generated when generating the registration"` |  |
| config.appservice.id | string | `"instagram"` |  |
| config.appservice.port | int | `29319` |  |
| config.bridge.backfill.catchup_fetch_pages | int | `5` |  |
| config.bridge.backfill.enabled | bool | `true` |  |
| config.bridge.backfill.history_fetch_pages | int | `0` |  |
| config.bridge.backfill.inbox_fetch_pages | int | `0` |  |
| config.bridge.backfill.queue.dont_fetch_xma | bool | `true` |  |
| config.bridge.backfill.queue.max_pages | int | `-1` |  |
| config.bridge.backfill.queue.pages_at_once | int | `5` |  |
| config.bridge.backfill.queue.sleep_between_tasks | string | `"20s"` |  |
| config.bridge.backfill.unread_hours_threshold | int | `0` |  |
| config.bridge.bridge_notices | bool | `true` |  |
| config.bridge.caption_in_message | bool | `false` |  |
| config.bridge.command_prefix | string | `"default"` |  |
| config.bridge.delivery_receipts | bool | `false` |  |
| config.bridge.disable_bridge_alerts | bool | `false` |  |
| config.bridge.disable_xma | bool | `false` |  |
| config.bridge.displayname_template | string | `"{{ \"{{or .DisplayName .Username `Unknown User`}} (IG)\" }}"` |  |
| config.bridge.double_puppet_allow_discovery | bool | `false` |  |
| config.bridge.double_puppet_server_map."example.com" | string | `"https://example.com"` |  |
| config.bridge.encryption.allow | bool | `false` |  |
| config.bridge.encryption.allow_key_sharing | bool | `false` |  |
| config.bridge.encryption.appservice | bool | `false` |  |
| config.bridge.encryption.default | bool | `false` |  |
| config.bridge.encryption.delete_keys.delete_fully_used_on_decrypt | bool | `false` |  |
| config.bridge.encryption.delete_keys.delete_on_device_delete | bool | `false` |  |
| config.bridge.encryption.delete_keys.delete_outbound_on_ack | bool | `false` |  |
| config.bridge.encryption.delete_keys.delete_outdated_inbound | bool | `false` |  |
| config.bridge.encryption.delete_keys.delete_prev_on_new_session | bool | `false` |  |
| config.bridge.encryption.delete_keys.dont_store_outbound | bool | `false` |  |
| config.bridge.encryption.delete_keys.periodically_delete_expired | bool | `false` |  |
| config.bridge.encryption.delete_keys.ratchet_on_decrypt | bool | `false` |  |
| config.bridge.encryption.require | bool | `false` |  |
| config.bridge.encryption.rotation.disable_device_change_key_rotation | bool | `false` |  |
| config.bridge.encryption.rotation.enable_custom | bool | `false` |  |
| config.bridge.encryption.rotation.messages | int | `100` |  |
| config.bridge.encryption.rotation.milliseconds | int | `604800000` |  |
| config.bridge.encryption.verification_levels.receive | string | `"unverified"` |  |
| config.bridge.encryption.verification_levels.send | string | `"unverified"` |  |
| config.bridge.encryption.verification_levels.share | string | `"cross-signed-tofu"` |  |
| config.bridge.federate_rooms | bool | `true` |  |
| config.bridge.login_shared_secret_map."example.com" | string | `"foobar"` |  |
| config.bridge.management_room_text.additional_help | string | `""` |  |
| config.bridge.management_room_text.welcome | string | `"Hello, I'm an Instagram bridge bot."` |  |
| config.bridge.management_room_text.welcome_connected | string | `"Use `help` for help."` |  |
| config.bridge.management_room_text.welcome_unconnected | string | `"Use `help` for help or `login` to log in."` |  |
| config.bridge.message_error_notices | bool | `true` |  |
| config.bridge.message_status_events | bool | `false` |  |
| config.bridge.mute_bridging | string | `"on-create"` |  |
| config.bridge.permissions."@admin:example.com" | string | `"admin"` |  |
| config.bridge.permissions."example.com" | string | `"user"` |  |
| config.bridge.permissions.* | string | `"relay"` |  |
| config.bridge.personal_filtering_spaces | bool | `false` |  |
| config.bridge.portal_message_buffer | int | `128` |  |
| config.bridge.private_chat_portal_meta | string | `"default"` |  |
| config.bridge.provisioning.debug_endpoints | bool | `false` |  |
| config.bridge.provisioning.prefix | string | `"/_matrix/provision"` |  |
| config.bridge.provisioning.shared_secret | string | `"generate"` |  |
| config.bridge.relay.admin_only | bool | `true` |  |
| config.bridge.relay.enabled | bool | `false` |  |
| config.bridge.relay.message_formats."m.audio" | string | `"{{\"<b>{{ .Sender.Displayname }}</b> sent an audio file\"}}"` |  |
| config.bridge.relay.message_formats."m.emote" | string | `"{{\"* <b>{{ .Sender.Displayname }}</b> {{ .Message }}\"}}"` |  |
| config.bridge.relay.message_formats."m.file" | string | `"{{\"<b>{{ .Sender.Displayname }}</b> sent a file\"}}"` |  |
| config.bridge.relay.message_formats."m.image" | string | `"{{\"<b>{{ .Sender.Displayname }}</b> sent an image\"}}"` |  |
| config.bridge.relay.message_formats."m.location" | string | `"{{\"<b>{{ .Sender.Displayname }}</b> sent a location\"}}"` |  |
| config.bridge.relay.message_formats."m.notice" | string | `"{{\"<b>{{ .Sender.Displayname }}</b>: {{ .Message }}\"}}"` |  |
| config.bridge.relay.message_formats."m.text" | string | `"{{\"<b>{{ .Sender.Displayname }}</b>: {{ .Message }}\"}}"` |  |
| config.bridge.relay.message_formats."m.video" | string | `"{{\"<b>{{ .Sender.Displayname }}</b> sent a video\"}}"` |  |
| config.bridge.resend_bridge_info | bool | `false` |  |
| config.bridge.sync_direct_chat_list | bool | `false` |  |
| config.bridge.username_template | string | `"instagram_{{ \"{{.}}\" }}"` |  |
| config.homeserver.address | string | `"https://matrix.example.com"` |  |
| config.homeserver.async_media | bool | `false` |  |
| config.homeserver.domain | string | `"example.com"` |  |
| config.homeserver.message_send_checkpoint_endpoint | string | `nil` |  |
| config.homeserver.ping_interval_seconds | int | `0` |  |
| config.homeserver.software | string | `"standard"` |  |
| config.homeserver.status_endpoint | string | `nil` |  |
| config.homeserver.websocket | bool | `false` |  |
| config.logging.min_level | string | `"debug"` |  |
| config.logging.writers[0].format | string | `"pretty-colored"` |  |
| config.logging.writers[0].type | string | `"stdout"` |  |
| config.logging.writers[1].compress | bool | `true` |  |
| config.logging.writers[1].filename | string | `"./logs/mautrix-meta.log"` |  |
| config.logging.writers[1].format | string | `"json"` |  |
| config.logging.writers[1].max_backups | int | `10` |  |
| config.logging.writers[1].max_size | int | `100` |  |
| config.logging.writers[1].type | string | `"file"` |  |
| config.meta.force_refresh_interval_seconds | int | `86400` |  |
| config.meta.get_proxy_from | string | `nil` |  |
| config.meta.ig_e2ee | bool | `false` |  |
| config.meta.min_full_reconnect_interval_seconds | int | `3600` |  |
| config.meta.mode | string | `"instagram"` |  |
| config.meta.proxy | string | `nil` |  |
| deploymentAnnotations | object | `{}` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"dock.mau.dev/mautrix/meta"` |  |
| image.tag | string | `"v{{ .Chart.AppVersion }}"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.class | string | `nil` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0] | string | `"chart-example.local"` |  |
| ingress.path | string | `"/"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.enabled | bool | `false` |  |
| persistence.existingClaim | string | `""` |  |
| persistence.size | string | `"128Mi"` |  |
| persistence.storageClass | string | `""` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext.sysctls[0].name | string | `"net.ipv4.ip_unprivileged_port_start"` |  |
| podSecurityContext.sysctls[0].value | string | `"0"` |  |
| probes.liveness.failureThreshold | int | `5` |  |
| probes.liveness.periodSeconds | int | `10` |  |
| probes.readiness.failureThreshold | int | `5` |  |
| probes.readiness.periodSeconds | int | `10` |  |
| probes.startup.failureThreshold | int | `30` |  |
| probes.startup.initialDelaySeconds | int | `5` |  |
| probes.startup.periodSeconds | int | `10` |  |
| registration.rate_limited | bool | `false` |  |
| registration.sender_localpart | string | `"metabridgebot"` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | int | `1` |  |
| resources.limits.memory | string | `"128Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"64Mi"` |  |
| securityContext | object | `{}` |  |
| service.clusterIP | string | `"None"` |  |
| service.externalTrafficPolicy | string | `nil` |  |
| service.port | int | `29319` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `nil` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.13.1](https://github.com/norwoodj/helm-docs/releases/v1.13.1)
