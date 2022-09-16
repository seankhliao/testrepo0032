setup:
	kind create cluster --config kind.yaml
	kubectl apply -f podmonitor.crd.yaml
	kubectl apply -f servicemonitor.crd.yaml
	kubectl apply -f opentelemetry-operator.yaml
	kubectl apply -f secret.yaml
	kubectl apply -f rbac.yaml
	kubectl apply -f servicemonitor.yaml
apply:
	kubectl apply -f otelcol.yaml
