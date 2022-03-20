# Knative Serving

This is essentially a boiled down version of the [Setup Knative with Kind without DNS headaches][setup] tutorial... but declarative. I'm not going to expalin anything here, I'll let the code speak for itself. But here's a roadmap to understand what's going on. First, look at `kind-cluster.yaml` and note the ports. Second, look at the `kustomization.yaml` and note the `nodePort` overlays in the kourier `Service`. Finally, do a `brew install kind` and you're ready to run the How to below. (I'm assuming you already have `kubectl`)

## How to

I've included a useful Makefile.

1. `make kind`
2. `make knative`
3. `make curl`

You may need to run `make knative` a few times because some stuff takes a bit to spin up correctly. It usually works if you run it once and then again after 20 or so seconds.

[setup]: https://knative.dev/blog/articles/set-up-a-local-knative-environment-with-kind/ "setup"
