# GoblinsAtCode kata sandbox boilerlate

A very simple boilerplate to have fun with kata and experiments

### Main scripts

- execute a typescript program / file (works on javascript program too) 
```shell
yarn start [your file/entry point]

yarn start src/welcome.ts # for example
```

- execute all tests files once 
```shell
yarn test
```

- execute all tests files (impacted by changes) in watch mode (on save 
```shell
yarn test:watch
```

- execute mutation testing (:warning: _configured with very high threshold, if you are not satisfied change them in_ `stryker.conf.json`)
```shell
yarn test:mutate
```

- execute the ci workflow (tsc for transpilation, eslint for linter, test:coverage and test:mutate) 
```shell
yarn ci
```

__Note__: :warning: Mutation Testing may be very time consuming, you may prefer to disable it in CI (and setup a nightly or on demand job) :warning:

### Reports

- traditional coverage report generated by `Jest` is in `/reports/coverage/lcov-report/`
__Note__: :warning: Coverage report is not 100% trustable, as you may know, it displays only the code covered by execution, **coverage doesn't mean : this code is tested, it means this code has been executed during tests !!** :warning:

- mutation testing report generated by stryker is in `/reports/mutation/html/`
__Note__: :warning: Mutation testing challenges your tests and your coverage, report is more relevant than "traditional coverage" however it's not silver bullet (read documentation [here](https://stryker-mutator.io/) about limitations)

- **train your Test-Driven Development techniques**, step by step you will need less and less Coverage and Mutation Testing because **great TDD (_and TCR_) is best way to have only useful tested code in a fast and trustable manner.** 

### Linter

- Eslint uses mainly the `standard` and `recommended` set of rules, with few personnal preferences, feel free to change it to be confortable.

##### TODO _(maybe some day if necessary_)

:arrow_right: less important to practice TDD on kata

- setup integration test's stack for web server kata with `supertest`
- setup end-2-end test's stack for web application with `cypress` and/or `playwright`
