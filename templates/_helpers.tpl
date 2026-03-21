{{/*
Agent namespace name: agent-<name>
*/}}
{{- define "agent.namespace" -}}
agent-{{ required "agent.name is required" .Values.agent.name }}
{{- end }}

{{/*
Common labels applied to all resources
*/}}
{{- define "agent.labels" -}}
sikifanso.io/agent: "true"
sikifanso.io/agent-name: {{ .Values.agent.name | quote }}
app.kubernetes.io/managed-by: sikifanso
{{- end }}
