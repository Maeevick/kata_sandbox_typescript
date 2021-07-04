# GoblinsAtCode's kata sandbox (@Maeevick)

A very simple boilerplate to have fun with kata and experiments

### Experimental `fork.sh` script

**helper to fork the boilerplate on your repository** (:warning: _at your own risks, but not so high !_ :heart:)

```shell
sh fork.sh
```

- _do you wish to perform migration ?_
- _what's the url of the target remote ?_
    - then script will change the remote url
    - reset the branch
    - amend the boilerplate in the first commit
- _do you want to push now ?_
    - push it on your main branch on your repository

:arrow_right: **Note**: feel free to improve it and submit PR, it's far from perfect :heart:

### Main scripts

:arrow_right: **Obvious Note**: require to install dependencies
```shell
yarn
```
- **execute a typescript program / file** (_works on javascript program too_) 
```shell
yarn start [your file/entry point]

yarn start src/welcome.ts # for example
```

- **execute all tests files once** 
```shell
yarn test
```

- **execute all tests files** (_impacted by changes_) **in watch mode** (a.k.a. on save) 
```shell
yarn test:watch
```

- **execute mutation testing** 
```shell
yarn test:mutate
```
:arrow_right: **Note**: configured with very high threshold, you can change them in : `stryker.conf.json`

- **execute all the CI's workflow** (tsc for transpilation, eslint for linter, test:coverage and test:mutate) 
```shell
yarn ci
```

:warning: **Warning**: Mutation Testing may be very time consuming

### Reports

- **traditional coverage report generated by** `jest` **is in** `/reports/coverage/lcov-report/`

:warning: **Warning**: Coverage report is not 100% trustable, as you may know, it displays only the code covered by execution, **coverage doesn't mean : this code is tested, it means this code has been executed during tests !!**

- **mutation testing report generated by** `stryker` **is in** `/reports/mutation/html/`

:warning: **Warning**: Mutation testing challenges your tests and your coverage, report is more relevant than "traditional coverage" however it's not silver bullet (read documentation [here](https://stryker-mutator.io/) about limitations)

- **train your Test-Driven Development techniques**, step by step you will need less and less Coverage and Mutation Testing because **great TDD (_and TCR_) is best way to have only useful tested code in a fast and trustable manner.** 

### Linter

- Eslint uses mainly the `standard` and `recommended` set of rules, with few personnal preferences, feel free to change it in : `.eslintrc.json` to be confortable.

##### TODO _(maybe some day if necessary_)

:arrow_right: less important to practice TDD on kata

- setup integration test's stack for web server kata with `supertest`
- setup end-2-end test's stack for web application with `cypress` and/or `playwright`
