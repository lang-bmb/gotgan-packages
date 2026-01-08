# gotgan-packages

Community packages for the BMB programming language, managed by [gotgan](https://github.com/lang-bmb/gotgan).

## Scope and Philosophy

This repository contains **reusable community packages** that extend BMB's capabilities beyond the standard library.

**NOT included here:**
- Core language primitives (in `stdlib/core/`)
- Built-in types and operations (part of compiler)
- Language-level features (ownership, contracts, etc.)

**Included here:**
- Utility libraries (math, time, formatting)
- Data format parsers (JSON, TOML, YAML)
- System utilities (fs, process, network)
- Development tools (testing, logging)
- Domain-specific libraries

## Available Packages

| Package | Description | Version | Status |
|---------|-------------|---------|--------|
| [bmb-math](packages/bmb-math) | Mathematical functions and constants | 0.1.0 | Stable |
| [bmb-rand](packages/bmb-rand) | Pseudo-random number generation | 0.1.0 | Stable |
| [bmb-log](packages/bmb-log) | Structured logging utilities | 0.1.0 | Stable |
| [bmb-testing](packages/bmb-testing) | Testing framework | 0.1.0 | Stable |
| [bmb-fmt](packages/bmb-fmt) | String formatting utilities | 0.1.0 | Stable |
| [bmb-time](packages/bmb-time) | Time and duration utilities | 0.1.0 | Stable |
| [bmb-json](packages/bmb-json) | JSON parsing and serialization | 0.1.0 | Stable |
| [bmb-regex](packages/bmb-regex) | Regular expression matching | 0.1.0 | Stable |
| [bmb-http](packages/bmb-http) | HTTP client and server utilities | 0.1.0 | Stable |
| [bmb-fs](packages/bmb-fs) | File system path utilities | 0.1.0 | Stable |
| [bmb-semver](packages/bmb-semver) | Semantic versioning parsing | 0.1.0 | Stable |
| [bmb-toml](packages/bmb-toml) | TOML parsing and validation | 0.1.0 | Stable |

## Installation

```bash
# Add a package to your project
gotgan add bmb-math

# Or specify in gotgan.toml
[dependencies]
bmb-math = "0.1.0"
bmb-semver = "^0.1.0"
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

### Quick Start

1. Create a new package directory under `packages/`
2. Add `gotgan.toml` with package metadata
3. Implement library in `src/lib.bmb`
4. Submit a pull request

### Package Guidelines

#### Code Quality
- **Contracts Required**: All public functions MUST have `pre`/`post` conditions
- **Pure Functions Preferred**: Mark pure functions with `@pure` attribute
- **Termination Proofs**: Recursive functions should have `@decreases` annotations
- **No Side Effects**: Avoid mutable state where possible

#### Naming Conventions
- Functions: `snake_case` (e.g., `parse_version`, `get_major`)
- Types: `PascalCase` (e.g., `Version`, `Constraint`)
- Constants: `SCREAMING_SNAKE` or functions returning values
- Packages: `bmb-<name>` (lowercase with hyphens)

#### Documentation
- Inline comments with `--` for sections and complex logic
- Section headers with `-- ============` separators
- Function purpose in comment above signature
- No separate doc files required (contracts are documentation)

#### Package Categories

| Category | Prefix | Examples |
|----------|--------|----------|
| Core utilities | `bmb-` | bmb-math, bmb-fmt |
| Data formats | `bmb-` | bmb-json, bmb-toml |
| System | `bmb-` | bmb-fs, bmb-http |
| Development | `bmb-` | bmb-testing, bmb-log |

### gotgan.toml Template

```toml
[package]
name = "bmb-<name>"
version = "0.1.0"
description = "Brief description of the package"
authors = ["Your Name <email@example.com>"]
license = "MIT"
repository = "https://github.com/lang-bmb/gotgan-packages"

[dependencies]
# List dependencies here
```

### Review Criteria

Pull requests are evaluated on:

1. **Correctness**: Contracts verified by SMT solver
2. **Completeness**: API covers common use cases
3. **Performance**: No unnecessary allocations or copies
4. **Reusability**: Generic design, no hard-coded values
5. **Consistency**: Follows BMB idioms and existing patterns

### Versioning

Packages follow [Semantic Versioning](https://semver.org/):
- `0.x.y`: Development phase, API may change
- `1.0.0+`: Stable API, breaking changes increment major
- Use `bmb-semver` package for version operations

## Development Roadmap

See [MODULE_ROADMAP.md](MODULE_ROADMAP.md) for the comprehensive development plan including:
- Package-to-benchmark mapping
- Feature gap analysis (f64, collections, etc.)
- Phased development timeline
- API specifications for planned enhancements

## Relationship to gotgan

These packages are extracted from or designed to support [gotgan](https://github.com/lang-bmb/gotgan) (the BMB package manager). Core gotgan functionality like semver parsing, TOML handling, and archive management becomes reusable packages here.

## License

MIT - See individual packages for specific license information.
