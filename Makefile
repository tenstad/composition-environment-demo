RENDER_TEST_ARGS += --package-file apis/package.yaml --functions-file dev-functions.yaml --include-full-xr
RENDER_TEST_ARGS += $(if $(DEVBOX_NET),-a render.crossplane.io/runtime-docker-network=$$DEVBOX_NET,)

.PHONY: test
test:
	atmos-crossplane alpha render test $(RENDER_TEST_ARGS)

.PHONY: snapshots
snapshots:
	atmos-crossplane alpha render test $(RENDER_TEST_ARGS) -w
