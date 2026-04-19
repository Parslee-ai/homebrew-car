# Homebrew tap for Common Agent Runtime

Official Homebrew tap distributing the CAR CLI + server binaries.

## Install

```bash
brew tap Parslee-ai/car
brew install car
```

Or in one line:

```bash
brew install Parslee-ai/car/car
```

Installs three binaries into your `$PATH`:

- `car` — the CLI
- `car-server` — WebSocket server exposing the runtime over JSON-RPC
- `car-memgine-eval` — StateBench evaluation bridge

Supported platforms: macOS 14+ (arm64 / x64), Linux (arm64 / x64 glibc).

## Upgrade

```bash
brew update
brew upgrade car
```

## Uninstall

```bash
brew uninstall car
brew untap Parslee-ai/car
```

## Node.js / Python bindings

This tap only ships the CLI + server. For language bindings:

- **Node.js**: `npm install car-runtime`
- **Python**: `pip install car-runtime`

See https://github.com/Parslee-ai/car-releases for full docs.

## License

Binaries are proprietary but free to use and redistribute in unmodified form.
This tap (the `.rb` formula) is Apache-2.0. See the
[releases repo](https://github.com/Parslee-ai/car-releases/blob/main/LICENSE)
for the binary license.
