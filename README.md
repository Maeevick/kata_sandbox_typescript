# GoblinsAtCode kata sandbox boilerlate

A very simple boilerplate to have fun with kata and experiments

### Main scripts

- execute a typescript program / file (works on javascript program too)
    `yarn start [your file/entry point]`

- execute all tests files once
    `yarn test`
    - with coverage 
        `yarn test:coverage`

- execute all tests files (impacted by changes) in watch mode (on save)
    `yarn test:watch`

- execute mutation testing 
    `yarn test:mutate`

- execute the ci workflow (tsc for transpilation, eslint for linter, test:coverage and test:mutate) 
    `yarn ci`

__Note__ :warning: Mutation Testing may be very time consuming, you may prefer to disable it in CI (and setup a nightly or on demand job) :warning:

### TODO

:arrow_right: less important practice TDD on kata

- setup integration test's stack for web server kata with `supertest`
- setup end-2-end test's stack for web application with `cypress` and/or `playwright`
