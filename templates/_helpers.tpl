{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "mautrix-meta.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "mautrix-meta.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "mautrix-meta.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "mautrix-meta.labels" -}}
helm.sh/chart: {{ include "mautrix-meta.chart" . }}
{{ include "mautrix-meta.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "mautrix-meta.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mautrix-meta.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Create the name of the service account to use
*/}}
{{- define "mautrix-meta.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "mautrix-meta.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
Generate registration.yaml from other configuration
*/}}
{{- define "mautrix-meta.registration-yaml" -}}
id: {{ .Values.config.appservice.id | quote }}
as_token: {{ .Values.config.appservice.as_token | quote }}
hs_token: {{ .Values.config.appservice.hs_token | quote }}
namespaces:
  users:
    - regex: {{ printf "^@metabot:%s$" (replace "." "\\." .Values.config.homeserver.domain) }}
      exclusive: true
    - regex: {{ printf "^@%s:%s$" (replace "{{.}}" ".*" (tpl .Values.config.bridge.username_template .)) (replace "." "\\." .Values.config.homeserver.domain) }}
      exclusive: true
url: {{ .Values.config.appservice.address | quote }}
sender_localpart: {{ .Values.registration.sender_localpart | quote }}
rate_limited: {{ .Values.registration.rate_limited }}
de.sorunome.msc2409.push_ephemeral: true
push_ephemeral: true
{{- end -}}

