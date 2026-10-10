# KubeBao .github

This repository contains the GitHub organization profile and the Hugo landing page for KubeBao.

## Contents

- [profile/README.md](profile/README.md): the GitHub organization profile.
- [website/](website/): the landing page for `kubebao.org`.
- [.github/workflows/pages.yml](.github/workflows/pages.yml): website build checks and GitHub Pages deployment.

OpenBao Operator documentation is maintained in the [operator repository](https://github.com/kubebao/openbao-operator).

## Local preview

Install the Hugo version specified in [.hugo-version](.hugo-version), then run:

```sh
make serve
```

Open <http://localhost:1313/>. The preview server binds to `127.0.0.1`.

To use a Hugo executable outside `PATH`, pass its path:

```sh
make serve HUGO=/path/to/hugo
```

Build the production files with:

```sh
make build
```

Hugo writes the generated site to `website/public/`. Generated files and local caches are ignored.

Pull requests run the website build. Changes on `main` deploy through GitHub Pages.

## License

Licensed under the [Apache License 2.0](LICENSE).
