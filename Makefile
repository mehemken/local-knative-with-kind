kind:
	kind create cluster --name knative --config kind-cluster.yaml

knative:
	kubectl kustomize . | kubectl apply -f -

curl:
	curl -H "Host: helloworld-go.default.127.0.0.1.nip.io" localhost

files:
	curl -OL https://github.com/knative/serving/releases/download/knative-v1.3.0/serving-core.yaml
	curl -OL https://github.com/knative/net-kourier/releases/download/knative-v1.0.0/kourier.yaml
