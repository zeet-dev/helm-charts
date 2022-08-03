{{- if and .Values.ingress.hostname .Values.ingress.zeet.autoCert }}
apiVersion: cert-manager.io/v1
kind: Certificate
metadata:
  name: {{ template "retool.fullname" . }}
spec:
  dnsNames:
    - {{ .Values.ingress.hostname }}
  secretName: cert-{{ template "retool.fullname" . }}
  issuerRef:
    name: letsencrypt-prod
    kind: ClusterIssuer
{{- end }}
