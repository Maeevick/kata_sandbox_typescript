import * as pbt from 'fast-check'
import { greeting, rollDiceWith6Sides } from './welcome'

describe('when project is installed', () => {
    test('then says "Welcome" and test passes', () => {
        expect(greeting()).toEqual('Welcome, setup is OK')
    })
})

describe('SETUP PROPERTY-BASED TESTING WITH FAST-CHECK AND JEST', () => {
    test('rollDiceWith6Sides returns an interger between 1 and 6 included (Mutation Testing catches the case where * is tranform in / and result is always 1 so we check the results are not always it)', () => {
        expect(rollDiceWith6Sides()).toBeDefined()

        const results:number[] = []
        pbt.assert(
            pbt.property(
                pbt.anything(),
                () => {
                    const diceResult = rollDiceWith6Sides()
                    results.push(diceResult)
                    return diceResult >= 1 && diceResult <= 6
                },
            ),
        )
        expect(results.some(e => e !== 1)).toEqual(true)
    })
})
