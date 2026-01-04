# gotgan-packages

Community packages for the BMB programming language, managed by [gotgan](https://github.com/lang-bmb/gotgan).

## Available Packages

| Package | Description | Status |
|---------|-------------|--------|
| [bmb-math](packages/bmb-math) | Mathematical functions and constants | ✅ |
| [bmb-rand](packages/bmb-rand) | Pseudo-random number generation | ✅ |
| [bmb-log](packages/bmb-log) | Structured logging utilities | ✅ |
| [bmb-testing](packages/bmb-testing) | Testing framework | ✅ |
| [bmb-fmt](packages/bmb-fmt) | String formatting utilities | ✅ |
| [bmb-time](packages/bmb-time) | Time and duration utilities | ✅ |
| [bmb-json](packages/bmb-json) | JSON parsing and serialization | ✅ |
| [bmb-regex](packages/bmb-regex) | Regular expression matching | ✅ |
| [bmb-http](packages/bmb-http) | HTTP client and server utilities | ✅ |
| [bmb-fs](packages/bmb-fs) | File system path utilities | ✅ |

## Installation

```bash
# Add a package to your project
gotgan add bmb-math

# Or specify in gotgan.toml
[dependencies]
bmb-math = "0.1.0"
```

## Package Structure

Each package follows the standard gotgan layout:

```
packages/
└── bmb-<name>/
    ├── gotgan.toml      # Package manifest
    └── src/
        └── lib.bmb      # Library source
```

## Contributing

1. Create a new package directory under `packages/`
2. Add `gotgan.toml` with package metadata
3. Implement library in `src/lib.bmb`
4. Submit a pull request

### Package Guidelines

- All public functions should have contracts (`pre`/`post` conditions)
- Include inline documentation with `--` comments
- Follow BMB naming conventions (snake_case for functions)
- Test with the interpreter before submitting

## License

MIT - See individual packages for specific license information.
