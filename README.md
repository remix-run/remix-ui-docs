# Remix UI docs

This repository builds and deploys the [Remix](https://github.com/remix-run/remix) UI documentation to GitHub Pages. The UI documentation source and static-site generator live in the Remix monorepo under [`docs/ui/`](https://github.com/remix-run/remix/tree/main/docs/ui).

## Deployment

[`.github/workflows/deploy.yml`](.github/workflows/deploy.yml) checks out the Remix monorepo, prerenders the UI documentation, and deploys the generated site as a GitHub Pages artifact.

Deployments run when:

- A commit is pushed to this repository's `main` branch.
- The **Deploy Remix UI docs** workflow is run manually. Its `ref` input accepts a Remix branch, tag, or commit.
- This repository receives an `update-ui` repository dispatch. The optional `ref` client payload selects the Remix source ref.

Deployments default to the Remix `main` branch.
