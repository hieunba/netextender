# netextender

Install SonicWall NetExtender for Windows

## Requirements

### Platforms

- Windows

Tested on Windows Server 2019

### Chef

- Chef 14.10.9+

## Attributes

- `node[netextender']['version']` = Sonicwall NetExtender version, default to '10.2.313'
- `node['netextender']['source']` = URL to download SonicWall NetExtender for Windows

## Resources

## Recipes

### default

The default recipe does nothing by default

### install

This recipe installs NetExtender for Windows

## Usage

Simply include the `netextender` recipe where ever you would like netextender installed.

### Role example

```ruby
name 'security'
description 'Install NetExtender'
run_list(
  'recipe[netextender::install]'
)
```

## References

- [How to I install or uninstall Global VPN Client](https://www.sonicwall.com/support/knowledge-base/how-do-i-install-or-uninstall-global-vpn-client-gvc/170505704468100/)
