module github.com/ndeloof/compose-hello-plugin

go 1.20

require (
	github.com/docker/compose/v2 v2.17.3
	github.com/hashicorp/go-hclog v1.5.0
	github.com/hashicorp/go-plugin v1.4.9
	github.com/ndeloof/cli v0.0.0-20190815010145-aa097cf1aa19
)

require (
	github.com/compose-spec/compose-go v1.13.4 // indirect
	github.com/distribution/distribution/v3 v3.0.0-20230327091844-0c958010ace2 // indirect
	github.com/docker/go-connections v0.4.0 // indirect
	github.com/fatih/color v1.13.0 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/hashicorp/yamux v0.0.0-20180604194846-3520598351bb // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.17 // indirect
	github.com/mitchellh/go-testing-interface v0.0.0-20171004221916-a61a99592b77 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/oklog/run v1.0.0 // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/sirupsen/logrus v1.9.0 // indirect
	golang.org/x/net v0.7.0 // indirect
	golang.org/x/sync v0.1.0 // indirect
	golang.org/x/sys v0.5.0 // indirect
	golang.org/x/text v0.7.0 // indirect
	google.golang.org/genproto v0.0.0-20221024183307-1bc688fe9f3e // indirect
	google.golang.org/grpc v1.50.1 // indirect
	google.golang.org/protobuf v1.28.1 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/compose-spec/compose-go => ../../compose-spec/compose-go
replace github.com/docker/compose/v2 => ../../docker/compose
