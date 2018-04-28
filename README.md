# Kubernetes e2e image

Docker image with everything needed to run [Kubernetes e2e tests](https://github.com/kubernetes/community/blob/master/contributors/devel/e2e-tests.md).

## Example

To run the conformance tests you would call it like this:

```sh
$ docker run -v $HOME/.kube/config:/kubeconfig \
  mikkeloscar/kubernetes-e2e:latest -p \
  -focus "\[Conformance\]" -skip "\[Serial\]" /e2e.test
```

Assuming you have `$HOME/.kube/config` configured for the cluster you want to
test.
