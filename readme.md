# Klab Starter Pack

This is a template repo and small tutorial for those interested in getting started specifying smart contracts with [`klab`](https://github.com/dapphub/klab).

klab is a smart contract specification language and proof explorer. A Klab spec can be thought of as an extremely thorough test suite that can be run against any evm bytecode.

Using klab we can show:

- The spec covers every possible execution (is exhaustive)
- All specified behaviours hold for every possible execution

## Building Klab

1. Clone the klab repo (`git@github.com:dapphub/klab.git`)
1. From the repo root run `nix-shell`
1. Run `make deps`
1. Run `make deps-haskell`
1. Klab is now available in your path

In future when you need to use klab you can go to the repo root, run `nix-shell` and you will be
dropped into a shell with `klab` available on `PATH`.

## Learning Klab

1. Read the [documentation](https://github.com/dapphub/klab/blob/master/acts.md) on the spec format
1. Play around with the [examples](https://github.com/dapphub/klab/tree/master/examples)
1. Watch @mrchico's [talk](https://www.youtube.com/watch?v=B-3eZiZ5HPE)
1. Look at the [keybindings](https://github.com/dapphub/klab#key-bindings)
1. Work through the DevCon4 workshop: [problems](https://github.com/dapphub/fv-tutorial), [solutions](https://github.com/dapphub/fv-tutorial-solutions)

## Using this Repo

### Writing Implementations

This repo uses [`dapp`](https://github.com/dapphub/dapptools/tree/master/src/dapp) to handle
solidity related tasks. You can build with `dapp build` and run tests with `dapp test`.

### Writing Specs

1. Open [`spec/spec.act.md`](./spec/spec.act.md) and start writing your spec
1. Ensure that the mapping from specs to implementations in [`config.json`](./config.json) is up to
   date
1. Build the k expressions (`klab build`)

### Verifying a Single Spec

1. Run `klab prove --dump <path_to_spec.k>`

### Verifying All Specs

1. Run `klab prove-all`

### Exploring Proofs

1. Run `klab debug $(klab hash <path_to_spec.k>)`
