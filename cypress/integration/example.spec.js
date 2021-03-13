/// <reference types="cypress" />

context('Example', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3000')
  })

  it('works!', () => {
    cy.contains('Yay! You’re on Rails!')
  })
})
