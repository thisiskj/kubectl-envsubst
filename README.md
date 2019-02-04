# kubectl-envsubst

This project contains a Dockerfile that contains both the kubectl binary and envsubst.

This can be useful to replace variables in kubernetes yaml files.

## Example

For example given the following pod spec, running envsubst will replace `$CI_COMMIT_TAG` with the value of that variable defined in your environment. This is particularly useful with CI/CD build systems.

```
...
spec:
  containers:
  - name: example
    image: registry.gitlab.com/thisiskj/example:$CI_COMMIT_TAG
    ports:
    - containerPort: 8080
...
```
