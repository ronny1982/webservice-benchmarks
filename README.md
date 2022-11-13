# Web Framework - Benchmarks

## Environment Prerequisite

### Toolchains

- [Node LTS](https://nodejs.org/en/download/)
- [Bun.js](https://bun-docs.vercel.app/en/installing)
- [deno](https://deno.land/manual@v1.27.2/getting_started/installation)
- [golang](https://go.dev/doc/install)
- [rustup](https://rustup.rs/)
- [.NET SDK 6](https://dotnet.microsoft.com/en-us/download)
- [v_windows.zip](https://github.com/vlang/v/releases/)
- vs_BuildTools.exe

### Helpers

- [Apache Tools OpenSSL 1.1.1 VS17](https://www.apachehaus.com/cgi-bin/download.plx)

## Run Benchmarks

### Node (HTTP)

```bash
cd ./servers/node
node ./serve-http.js # Non-SSL
node ./servessl-http.js # SSL
```

### Node (UWS)

```bash
cd ./servers/node
npm install
node ./serve-uws.js # Non-SSL
node ./servessl-uws.js # SSL
```

### Bun
```bash
cd ./servers/bun
bun ./serve.ts # Non-SSL
bun ./servessl.ts # SSL
```

### Deno

```bash
cd ./servers/deno
deno run --allow-net --allow-read --unstable ./serve.ts
```

### golang (HTTP)

```bash
cd ./servers/golang
go run ./serve-nethttp.go # Non-SSL
go run ./servessl-nethttp.go # SSL
```

### golang (FastHTTP)

```bash
cd ./servers/golang
go run ./serve-fasthttp.go # Non-SSL
go run ./servessl-fasthttp.go # SSL
```

### Rust

```bash
cd ./servers/rust
cargo run --release --bin=serve # Non-SSL
cargo run --release --bin=servessl # SSL
```

### .NET Core

```bash
cd ./servers/dotnet
dotnet run --release
```

### vlang

[Memory Leak](https://github.com/vlang/v/issues/3897)

Requires OpenSSL Development Package!

```bash
cd ./servers/vlang
v -prod run ./serve.v
```
