
path = require('path')

module.exports =

  development:
    db: 'mongodb://localhost/node-ticket-manager_dev'
    app:
      name: 'Ticket System - Dev'
    basicAuth:
      username : "dev"
      password : "123"

  test:
    db: 'mongodb://localhost/node-ticket-manager_test'
    app:
      name: 'Ticket System - Test'
    basicAuth:
      username : "test"
      password : "123"

  production:
    db: 'mongodb://localhost/node-ticket-manager'
    app:
      name: 'Ticket System'
    basicAuth:
      username : "production"
      password : "123"


