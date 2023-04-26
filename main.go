package main

import (
	"os"

	"github.com/docker/compose/v2/pkg/plugins"
	"github.com/hashicorp/go-hclog"
	"github.com/hashicorp/go-plugin"
)

type SecretsHello struct {
	logger hclog.Logger
}

func (g *SecretsHello) GetSecret(name string) (string, error) {
	g.logger.Debug("message from SecretsHello.GetSecret")
	return "Hello!", nil
}

func main() {
	logger := hclog.New(&hclog.LoggerOptions{
		Level:      hclog.Trace,
		Output:     os.Stderr,
		JSONFormat: true,
	})

	Secret := &SecretsHello{
		logger: logger,
	}
	// pluginMap is the map of plugins we can dispense.
	var pluginMap = map[string]plugin.Plugin{
		"get-secrets": &plugins.SecretsPlugin{Impl: Secret},
	}

	logger.Debug("message from plugin", "foo", "bar")

	plugin.Serve(&plugin.ServeConfig{
		HandshakeConfig: plugins.HandshakeConfig,
		Plugins:         pluginMap,
	})
}
