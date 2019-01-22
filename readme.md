# Klab Starter Pack

This is a template repo and small tutorial for those interested in getting started specifying smart contracts with [`klab`](https://github.com/dapphub/klab).

klab is a smart contract specification language and proof explorer. A Klab spec can be thought of as an extremely thorough test suite that can be run against any evm bytecode.

Using klab we can show:

- The spec covers every possible execution (is exhaustive)
- All specified behaviours hold for every possible execution

## Running Klab

Either:

1. Follow the installation instructions [here](https://github.com/dapphub/klab#setting-up-klab-server-and-client)
1. Use the docker image: `docker run -it --network host -v "$(pwd)":"$(pwd)" -w "$(pwd)" dapphub/klab klab`

## Learning Klab

1. Read the documentation on the spec format: https://github.com/dapphub/klab/blob/master/acts.md
1. Look at the [examples](https://github.com/dapphub/klab/tree/master/examples)
1. Look at the [keybindings](https://github.com/dapphub/klab#key-bindings)
1. Work through the DevCon4 workshop: [problems](https://github.com/dapphub/fv-tutorial), [solutions](https://github.com/dapphub/fv-tutorial-solutions)

## Using this Repo

### Preparation

1. Add the project you wish to specify as a submodule in the `dapp` folder (`git submodule add <REPO> dapp`)
1. Build the project (`(cd dapp && dapp build)`)
1. Open [`config.json`](./config.json) and edit the implementations section to connect contract names in the spec with concrete bytecode implementations (`*.sol.json` files).

### Writing Specs

1. Open [`src/spec.act.md`](./src/spec.act.md) and start writing your spec
1. Build the k expressions (`klab build`)

## Verifying Code

1. Run `klab prove <path_to_spec.k>`

### Exploring Proofs

1. In one tab run `klab server`
1. In another run `klab run --spec <path_to_spec.k>`
