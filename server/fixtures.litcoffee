# create the two players

    if Meteor.users.find().count() is 0
      users = [
        username: 'white'
        email: 'white@user.com'
        password: 'go'
      ,
        username: 'black'
        email: 'black@user.com'
        password: 'go'
      ]
      console.log 'creating test users'
      _.each users, (user) ->
        Accounts.createUser user
