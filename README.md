![PDQ Deploy logo](https://documentation.pdq.com/PDQDeploy/17.2.0.0/deploylogo-210.png)

# PDQ Deploy Cookbook

This cookbook installs the PDQ Deploy console in a given mode and either configures a connection to a PDQ Deploy Central Server or sets a new Central Server up.

## Requirements

- Chef 12.9+

### Platforms

- Windows

### Dependencies

- [Chocolatey cookbook](https://supermarket.chef.io/cookbooks/chocolatey)

## Usage

Add `recipe[pdqdeploy::default]` to your run list.

### Attributes

These attributes control the deployment of PDQ. 

All attributes below are pre-pended with `node['pdq']`

Attribute                                            | Description                                                                               | Type    | Default
---------------------------------------------------- | ----------------------------------------------------------------------------------------- | ------- | ---------------------------------------------------------------------------------
`['license']`                                        | Should be copied from your account on pdq.com, begins with --- START LICENSE ---                                   | String | nil
`['serverhostname']`        | FQDN of your Central Server, e.g. pdq.example.com                                                 | String  | nil
`['mode']`            | Whether to deploy this console in Client or Server mode                                                     | String  | Client 
`['port']`        | TCP port to talk to Central Server                                                                       | String  | 6336

## License & Maintainer

Maintainer: Garrett Yamada (me@garrettyamada.com)

License: MIT
