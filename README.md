<div align="center">

# asdf-datadog-static-analyzer [![Build](https://github.com/brentm5/asdf-datadog-static-analyzer/actions/workflows/build.yml/badge.svg)](https://github.com/brentm5/asdf-datadog-static-analyzer/actions/workflows/build.yml) [![Lint](https://github.com/brentm5/asdf-datadog-static-analyzer/actions/workflows/lint.yml/badge.svg)](https://github.com/brentm5/asdf-datadog-static-analyzer/actions/workflows/lint.yml)

[datadog-static-analyzer](https://github.com/DataDog/datadog-static-analyzer) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `unzip`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add datadog-static-analyzer
# or
asdf plugin add datadog-static-analyzer https://github.com/brentm5/asdf-datadog-static-analyzer.git
```

datadog-static-analyzer:

```shell
# Show all installable versions
asdf list-all datadog-static-analyzer

# Install specific version
asdf install datadog-static-analyzer latest

# Set a version globally (on your ~/.tool-versions file)
asdf global datadog-static-analyzer latest

# Now datadog-static-analyzer commands are available
datadog-static-analyzer -v
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/brentm5/asdf-datadog-static-analyzer/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Montague, Brent](https://github.com/brentm5/)
