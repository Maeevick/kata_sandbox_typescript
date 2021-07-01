import { setup } from '.'

describe('when Tooling is Setup', () => {
    test('returns "ok"', () => {
        expect(setup()).toEqual('ok')
    })
})
