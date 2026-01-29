# composition-environment-demo

## Example

```yaml
apiVersion: example.io/v1alpha1
kind: Environment
metadata:
  name: dev
spec: {}
```

## Testing

Prereqs: Docker

- `make test` runs the test suite, comparing the results of composing `tests/*/composite-resource.yaml` with `tests/*/expected.yaml`.
- `make snapshots` will update the `tests/*/expected.yaml` files.
